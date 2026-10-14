import {build} from 'esbuild';
import {copyFile, mkdir} from 'node:fs/promises';
const output = new URL('../../assets/sql/', import.meta.url);
await mkdir(output, {recursive: true});
await build({entryPoints:[new URL('worker.js',import.meta.url).pathname],outdir:output.pathname,bundle:true,format:'esm',platform:'browser',external:['node:fs','node:crypto'],minify:true});
await copyFile(new URL('node_modules/libpg-query/wasm/libpg-query.wasm',import.meta.url),new URL('libpg-query.wasm',output));
