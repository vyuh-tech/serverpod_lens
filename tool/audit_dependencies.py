#!/usr/bin/env python3
"""Query OSV for pinned public Pub/npm dependencies; private and SDK packages are excluded."""
import json,re,urllib.request,pathlib
s=pathlib.Path('pubspec.lock').read_text();queries=[]
for name,block in re.findall(r'^  (\w+):\n(.*?)(?=^  \w+:|^sdks:)',s,re.M|re.S):
 version=re.search(r'^    version: "([^"]+)"',block,re.M)
 if version and 'source: hosted' in block and 'pub.dev' in block:
  queries.append({'package':{'name':name,'ecosystem':'Pub'},'version':version.group(1)})
n=json.loads(pathlib.Path('packages/serverpod_lens/tool/sql/package-lock.json').read_text())
for path,p in n.get('packages',{}).items():
 if path.startswith('node_modules/') and p.get('version'):
  queries.append({'package':{'name':path.split('node_modules/')[-1],'ecosystem':'npm'},'version':p['version']})
req=urllib.request.Request('https://api.osv.dev/v1/querybatch',data=json.dumps({'queries':queries}).encode(),headers={'Content-Type':'application/json'})
with urllib.request.urlopen(req,timeout=60) as r: results=json.load(r)['results']
findings=[{'package':q['package'],'version':q['version'],**v} for q,v in zip(queries,results) if v.get('vulns')]
if any(v.get('next_page_token') for v in results):
 raise RuntimeError('OSV returned paginated findings; scan is incomplete.')
print('Scanned locked packages:',len(queries));print(json.dumps(findings,indent=2))

raise SystemExit(1 if findings else 0)
