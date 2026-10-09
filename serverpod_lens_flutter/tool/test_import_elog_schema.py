"""Run with the same Python environment as import_elog_schema.py."""
import json
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest


class SqlImportTest(unittest.TestCase):
    def test_schemas_columns_and_referential_actions(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            schema = root / '01_sso'
            schema.mkdir()
            (schema / 'tables.sql').write_text('''
                CREATE TABLE sso.roles (id uuid PRIMARY KEY);
                CREATE TABLE sso.members (
                    id uuid PRIMARY KEY,
                    role_id uuid REFERENCES sso.roles(id) ON DELETE CASCADE,
                    FOREIGN KEY (id) REFERENCES sso.roles(id) ON UPDATE RESTRICT
                );
                CREATE UNIQUE INDEX partial_role ON sso.members(role_id) WHERE id IS NOT NULL;
                ALTER TABLE sso.members ADD COLUMN label text DEFAULT 'member';
            ''')
            out = root / 'graph.json'
            subprocess.run([
                sys.executable, str(Path(__file__).with_name('import_elog_schema.py')),
                str(root), '--out', str(out),
            ], check=True, capture_output=True)
            graph = json.loads(out.read_text())
            table = next(t for t in graph['tables'] if t['name'] == 'sso.members')
            self.assertEqual(table['schema'], 'sso')
            self.assertEqual(table['columns'][-1]['name'], 'label')
            self.assertEqual(table['columns'][-1]['defaultValue'], "'member'")
            role_fk = next(k for k in table['foreignKeys'] if k['columns'] == ['role_id'])
            self.assertEqual(role_fk['refTable'], 'sso.roles')
            self.assertEqual(role_fk['onDelete'], 'CASCADE')
            id_fk = next(k for k in table['foreignKeys'] if k['columns'] == ['id'])
            self.assertEqual(id_fk['onUpdate'], 'RESTRICT')
            role = next(c for c in table['columns'] if c['name'] == 'role_id')
            self.assertFalse(role['isUnique'])
            self.assertTrue(table['indexes'][0]['unique'])
            self.assertEqual(table['indexes'][0]['predicate'], 'id IS NOT NULL')


if __name__ == '__main__':
    unittest.main()
