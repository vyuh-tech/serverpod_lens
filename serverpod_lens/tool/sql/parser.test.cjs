const {test} = require('node:test');
const assert = require('node:assert/strict');
const {parse} = require('libpg-query');
const {writeFileSync, mkdirSync} = require('node:fs');
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
 mkdirSync('../../test/fixtures', {recursive:true});
 writeFileSync('../../test/fixtures/postgres.json', JSON.stringify(ast, null, 2)+'\n');
});
test('syntax errors include parser diagnostics', async () => {
 await assert.rejects(parse('CREATE TABLE broken ('), /syntax error/i);
});
test('quoted identifiers and dollar strings are parsed rather than split at semicolons', async () => {
 const ast = await parse('CREATE TABLE "Odd;Table" ("Column name" text DEFAULT $$a;b$$);');
 assert.equal(ast.stmts.length, 1);
 assert.equal(ast.stmts[0].stmt.CreateStmt.relation.relname, 'Odd;Table');
});
