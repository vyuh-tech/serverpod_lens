const {test} = require('node:test');
const assert = require('node:assert/strict');
const {parse} = require('libpg-query');
const {readFileSync} = require('node:fs');
const sql = `
CREATE TYPE app.status AS ENUM ('new', 'done');
CREATE TABLE app.parent (tenant uuid, id bigint, PRIMARY KEY (tenant, id));
CREATE TABLE app.child (
 id bigserial PRIMARY KEY, tenant uuid NOT NULL, parent_id bigint,
 title varchar(80) DEFAULT 'it''s; valid', tags text[], state app.status,
 CONSTRAINT parent_fk FOREIGN KEY (tenant, parent_id) REFERENCES app.parent ON DELETE CASCADE
);
CREATE UNIQUE INDEX child_title ON app.child(title) WHERE parent_id > 0;
ALTER TABLE app.child ADD COLUMN active boolean DEFAULT true;
ALTER TABLE app.child ALTER COLUMN active SET NOT NULL;
ALTER TABLE app.child ALTER COLUMN title DROP DEFAULT;
`;
test('PostgreSQL AST handles types, composite keys, partial indexes and ALTER', async () => {
 const ast = await parse(sql);
 assert.equal(ast.stmts.length, 7);
 assert.equal(ast.stmts[2].stmt.CreateStmt.tableElts[3].ColumnDef.colname, 'title');
 const fixture = JSON.parse(readFileSync('../test/fixtures/postgres.json', 'utf8'));
 assert.deepEqual(ast, fixture);
});
test('syntax errors include parser diagnostics', async () => {
 await assert.rejects(parse('CREATE TABLE broken ('), /syntax error/i);
});
test('quoted identifiers and dollar strings are parsed rather than split at semicolons', async () => {
 const ast = await parse('CREATE TABLE "Odd;Table" ("Column name" text DEFAULT $$a;b$$);');
 assert.equal(ast.stmts.length, 1);
 assert.equal(ast.stmts[0].stmt.CreateStmt.relation.relname, 'Odd;Table');
});
test('a broken statement after valid DDL rejects the whole input', async () => {
 await assert.rejects(parse('CREATE TABLE valid (id int); CREATE TABLE broken ('), /syntax error/i);
});
test('large cyclic schemas retain every self-reference in the real AST', async () => {
 const sql = Array.from({length:100}, (_, i) => `CREATE TABLE "table_${i}" (id int PRIMARY KEY, parent_id int REFERENCES "table_${i}"(id));`).join('\n');
 const ast = await parse(sql);
 assert.equal(ast.stmts.length, 100);
 for (let i = 0; i < 100; i++) {
  const statement = ast.stmts[i].stmt.CreateStmt;
  assert.equal(statement.relation.relname, `table_${i}`);
  assert.equal(statement.tableElts[1].ColumnDef.constraints[0].Constraint.pktable.relname, `table_${i}`);
 }
});
