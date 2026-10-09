"""Read flutter_elog SQL declarations into the viewer's bundled schema graph.

This is an offline fixture importer, not a PostgreSQL migration executor.
Requires sqlglot==30.21.0. Reads the source project without changing it.
"""
import argparse
import glob
import json
import os
import re
from collections import Counter
from datetime import datetime, timezone
from pathlib import Path

import sqlglot
from sqlglot import exp

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("root", type=Path, help="flutter_elog/supabase/schemas directory")
parser.add_argument("--out", type=Path, default=Path(__file__).resolve().parents[1] / "assets/schema_graph.json")
args = parser.parse_args()
ROOT = str(args.root.resolve())
DOMAINS = sorted(p.name for p in args.root.iterdir() if p.is_dir() and re.match(r"^\d+_", p.name))
warnings = []

def files():
    out = []
    for d in DOMAINS:
        out += sorted(glob.glob(os.path.join(ROOT, d, "**", "*.sql"), recursive=True))
    return out

def split_statements(sql):
    stmts, buf, i, n = [], [], 0, len(sql)
    dollar, in_single = None, False
    while i < n:
        ch = sql[i]
        if not in_single and dollar is None and sql.startswith("--", i):
            j = sql.find("\n", i)
            if j == -1: break
            i = j + 1; continue
        if not in_single and dollar is None and sql.startswith("/*", i):
            j = sql.find("*/", i)
            i = (j + 2) if j != -1 else n; continue
        if not in_single and ch == "$":
            m = re.match(r"\$[A-Za-z_]*\$", sql[i:])
            if m:
                tag = m.group(0)
                if dollar is None: dollar = tag
                elif dollar == tag: dollar = None
                buf.append(tag); i += len(tag); continue
        if dollar is None:
            if ch == "'":
                in_single = not in_single; buf.append(ch); i += 1; continue
            if ch == ";" and not in_single:
                s = "".join(buf).strip()
                if s: stmts.append(s)
                buf = []; i += 1; continue
        buf.append(ch); i += 1
    s = "".join(buf).strip()
    if s: stmts.append(s)
    return stmts

def format_literal_statements(sql, schema):
    """Extract DDL embedded in format('... %I.table ...', schema_name) literals."""
    out = []
    for m in re.finditer(r"'((?:[^']|'')*)'", sql, re.S):
        lit = m.group(1)
        if "CREATE TABLE" not in lit.upper():
            continue
        body = lit.replace("''", "'").replace("%I", schema)
        out.append(body.strip())
    return out

def norm_type(dt):
    if dt is None: return "text"
    return dt.sql(dialect="postgres").lower()

def ref_info(ref):
    # exp.References: this is schema/table, expressions columns
    tgt = ref.this
    schema = None; table = None
    if isinstance(tgt, exp.Schema):
        table = tgt.this.name if isinstance(tgt.this, exp.Table) else str(tgt.this)
        schema = tgt.this.db if isinstance(tgt.this, exp.Table) else None
        cols = [c.name for c in tgt.expressions]
    elif isinstance(tgt, exp.Table):
        table = tgt.name; schema = tgt.db; cols = []
    else:
        table = str(tgt); cols = []
    return schema, table, cols

def referential_actions(reference):
    options = reference.args.get("options") or []
    actions = {"onDelete": None, "onUpdate": None}
    for option in options:
        for label, key in [("ON DELETE ", "onDelete"), ("ON UPDATE ", "onUpdate")]:
            if option.upper().startswith(label):
                actions[key] = option[len(label):].upper()
    return actions

tables = {}
enums = {}
indexes = []
ddl_re = re.compile(r"^\s*(CREATE\s+(TABLE|TYPE|(UNIQUE\s+)?INDEX)|ALTER\s+TABLE)", re.I)

for f in files():
    sql = open(f).read()
    domain = Path(f).relative_to(ROOT).parts[0].split("_", 1)[1]
    stmts = split_statements(sql) + format_literal_statements(sql, domain)
    for stmt in stmts:
        if not ddl_re.match(stmt):
            continue
        try:
            node = sqlglot.parse_one(stmt, dialect="postgres")
        except Exception as error:
            warnings.append(f"{Path(f).relative_to(ROOT)}: {error}")
            continue
        if isinstance(node, exp.Command):
            warnings.append(f"{Path(f).relative_to(ROOT)}: unsupported DDL {stmt[:80]}")
            continue
        kind = (node.kind or "").upper() if isinstance(node, exp.Create) else ""
        if isinstance(node, exp.Create) and kind == "TABLE":
            sch = node.this
            if not isinstance(sch, exp.Schema): continue
            t = sch.this
            schema = t.db if isinstance(t, exp.Table) else None
            name = t.name if isinstance(t, exp.Table) else str(t)
            cols = []
            pk_cols = []
            for e in (sch.expressions or []):
                if isinstance(e, exp.ColumnDef):
                    cname = e.name
                    ctype = norm_type(e.args.get("kind"))
                    nullable = True
                    default = None
                    is_pk = False; is_unique = False
                    ref = None
                    ref_actions = {}
                    for cons in (e.constraints or []):
                        k = cons.kind
                        ks = k.sql().upper() if k is not None else ""
                        if isinstance(k, exp.NotNullColumnConstraint): nullable = False
                        if isinstance(k, exp.PrimaryKeyColumnConstraint): is_pk = True; nullable = False
                        if isinstance(k, exp.UniqueColumnConstraint): is_unique = True
                        if isinstance(k, exp.DefaultColumnConstraint): default = k.this.sql() if k.this else None
                        if isinstance(k, exp.Reference):
                            ref = ref_info(k)
                            ref_actions = referential_actions(k)
                    cols.append(dict(name=cname, type=ctype, nullable=nullable,
                                     default=default, pk=is_pk, unique=is_unique,
                                     ref=ref, actions=ref_actions, raw=e.sql(dialect="postgres")))
                    if is_pk: pk_cols.append(cname)
                elif isinstance(e, exp.PrimaryKey):
                    pk_cols = [c.name for c in e.expressions]
                    for c in cols:
                        if c["name"] in pk_cols: c["pk"] = True; c["nullable"] = False
            for key in sch.find_all(exp.PrimaryKey):
                for column in cols:
                    if column['name'] in [c.name for c in key.expressions]:
                        column['pk'] = True
                        column['nullable'] = False
            for constraint in sch.find_all(exp.UniqueColumnConstraint):
                if isinstance(constraint.this, exp.Schema):
                    indexes.append(dict(schema=schema, table=name, name=f"{name}_unique_{len(indexes)}", columns=[c.name for c in constraint.this.expressions], unique=True, type="btree"))
            tables.setdefault((schema, name), dict(schema=schema, name=name, columns=cols,
                                          primaryKey=pk_cols, foreignKeys=[]))
            for fk in sch.find_all(exp.ForeignKey):
                rs, rt, rcols = ref_info(fk.args["reference"])
                tables[(schema, name)]["foreignKeys"].append(dict(columns=[c.name for c in fk.expressions], refSchema=rs, refTable=rt, refColumns=rcols, **referential_actions(fk.args["reference"]), name=None))
        elif isinstance(node, exp.Create) and kind == "INDEX":
            index = node.this
            target = index.args.get('table')
            params = index.args.get('params')
            if isinstance(target, exp.Table) and params is not None:
                columns = [c.this.name if isinstance(c.this, exp.Column) else c.this.sql(dialect="postgres") for c in params.args.get('columns') or []]
                indexes.append(dict(schema=target.db or domain, table=target.name, name=index.name, columns=columns, unique=bool(node.args.get('unique')), predicate=params.args['where'].this.sql(dialect="postgres") if params.args.get('where') else None, type=params.args.get('using') or 'btree'))
        elif isinstance(node, exp.Create) and kind == "TYPE":
            enums[str(node.this)] = dict(values=[v.name for v in node.expressions] if node.expressions else [])
        elif isinstance(node, exp.Alter):
            tgt = node.this
            if isinstance(tgt, exp.Schema):
                schema = tgt.this.db if isinstance(tgt.this, exp.Table) else None
                name = tgt.this.name if isinstance(tgt.this, exp.Table) else str(tgt.this)
            elif isinstance(tgt, exp.Table):
                schema, name = tgt.db, tgt.name
            else:
                continue
            key = (schema, name)
            if key not in tables: continue
            for action in (node.args.get("actions") or []):
                if isinstance(action, exp.ColumnDef):
                    cname = action.name
                    if not any(c["name"] == cname for c in tables[key]["columns"]):
                        nullable = not any(isinstance(c.kind, exp.NotNullColumnConstraint) for c in action.constraints)
                        default = next((c.kind.this.sql() for c in action.constraints if isinstance(c.kind, exp.DefaultColumnConstraint)), None)
                        tables[key]["columns"].append(dict(name=cname, type=norm_type(action.args.get("kind")), nullable=nullable, default=default, pk=False, unique=False, ref=None))
                for fk in action.find_all(exp.ForeignKey):
                    fk_sql = fk.sql(dialect="postgres")
                    fkcols = [c.name for c in fk.expressions]
                    ref = fk.args.get("reference")
                    rs = rt = None; rcols = []
                    if ref is not None:
                        rs, rt, rcols = ref_info(ref)
                    m1 = re.search(r"ON DELETE ([A-Z ]+?)(?: ON UPDATE|$|\s*\()", fk_sql)
                    m2 = re.search(r"ON UPDATE ([A-Z ]+?)(?: ON DELETE|$|\s*\()", fk_sql)
                    tables[key]["foreignKeys"].append(dict(
                        columns=fkcols, refSchema=rs, refTable=rt, refColumns=rcols,
                        onDelete=(m1.group(1).strip() if m1 else None),
                        onUpdate=(m2.group(1).strip() if m2 else None),
                        name=None))

# merge inline refs into foreignKeys
for key, tb in tables.items():
    for c in tb["columns"]:
        if c.get("ref"):
            rs, rt, rcols = c["ref"]
            tb["foreignKeys"].append(dict(columns=[c["name"]], refSchema=rs, refTable=rt,
                                          refColumns=rcols, onDelete=c.get("actions", {}).get("onDelete"), onUpdate=c.get("actions", {}).get("onUpdate"), name=None))
    # dedupe
    seen = set(); fks = []
    for fk in tb["foreignKeys"]:
        sig = (tuple(fk["columns"]), fk["refSchema"], fk["refTable"], tuple(fk["refColumns"]))
        if sig in seen: continue
        seen.add(sig); fks.append(fk)
    tb["foreignKeys"] = fks


def qualified(schema, name):
    return f"{schema or 'public'}.{name}"

rows = []
for (schema, name), table in sorted(tables.items(), key=lambda entry: (entry[0][0] or "", entry[0][1])):
    schema = schema or "public"
    rows.append({
        "__className__": "SchemaTable", "name": qualified(schema, name),
        "className": name, "schema": schema, "module": schema,
        "columns": [{
            "__className__": "SchemaColumn", "name": c["name"], "fieldName": c["name"],
            "dartType": c["type"], "dbType": c["type"], "isNullable": c["nullable"],
            "isPrimaryKey": c["pk"], "isUnique": c["unique"],
            **({"defaultValue": c["default"]} if c["default"] is not None else {}),
        } for c in table["columns"]],
        "foreignKeys": [{
            "__className__": "SchemaForeignKey", "name": fk["name"] or f"{name}_fk_{i}",
            "columns": fk["columns"], "refTable": qualified(fk["refSchema"] or schema, fk["refTable"]),
            "refColumns": fk["refColumns"] or ["id"],
            "onDelete": fk["onDelete"] or "NO ACTION", "onUpdate": fk["onUpdate"] or "NO ACTION",
        } for i, fk in enumerate(table["foreignKeys"])],
        "indexes": [{"__className__": "SchemaIndex", "name": i["name"], "columns": i["columns"], "unique": i["unique"], "type": str(i["type"]), **({"predicate": i["predicate"]} if i.get("predicate") else {})} for i in indexes if (i["schema"] or "public", i["table"]) == (schema, name)],
    })
for table in rows:
    for column in table["columns"]:
        if any(i["unique"] and not i.get("predicate") and i["columns"] == [column["name"]] for i in table["indexes"]):
            column["isUnique"] = True
counts = Counter(t["schema"] for t in rows)
graph = {
    "__className__": "SchemaGraph", "source": "flutter_elog",
    "generatedAt": datetime.now(timezone.utc).isoformat(),
    "modules": [{"__className__": "SchemaModule", "name": name, "tableCount": count} for name, count in sorted(counts.items())],
    "tables": rows, "enums": [{"__className__": "SchemaEnum", "name": name, "values": e["values"]} for name, e in sorted(enums.items())],
}
args.out.parent.mkdir(parents=True, exist_ok=True)
args.out.write_text(json.dumps(graph, indent=2) + "\n")
names = {table["name"] for table in rows}
unresolved = [{"table": table["name"], "constraint": key["name"], "target": key["refTable"]} for table in rows for key in table["foreignKeys"] if key["refTable"] not in names]
report = {"renderedRelationships": sum(len(t["foreignKeys"]) for t in rows) - len(unresolved), "unresolvedTargets": unresolved, "schemas": dict(sorted(counts.items())), "tables": len(rows), "columns": sum(len(t["columns"]) for t in rows), "foreignKeys": sum(len(t["foreignKeys"]) for t in rows), "warnings": warnings, "limitations": ["SQL declarations, not live database introspection", "Dynamic DDL substitutes its declared schema", "Procedural schema changes and ALTER column changes are not fully modeled"]}
args.out.with_suffix(".import-report.json").write_text(json.dumps(report, indent=2) + "\n")
print(json.dumps({k:v for k,v in report.items() if k != "warnings"}, indent=2))
print(f"{len(warnings)} unsupported declarations; see {args.out.with_suffix('.import-report.json')}")
