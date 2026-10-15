// Requires Playwright and Chromium. Build interaction_benchmark.dart through
// tool/lens/viewer, serve its web output, then run:
// node measure_interactions.cjs http://127.0.0.1:8772 [cpu-rate] [runs] [selected]
const { chromium } = require('playwright');

async function main() {
  const url = process.argv[2];
  if (!url) throw new Error('Pass the synthetic benchmark URL.');
  const cpuThrottle = Number(process.argv[3] || 4);
  const runs = Number(process.argv[4] || 3);
  const selected = process.argv[5] === 'selected';
  const browser = await chromium.launch({
    executablePath: process.env.CHROMIUM_PATH || '/usr/bin/chromium',
    headless: true,
    args: ['--no-sandbox', '--enable-unsafe-swiftshader'],
  });
  try {
    const page = await browser.newPage({ viewport: { width: 1440, height: 960 } });
    const session = await page.context().newCDPSession(page);
    await session.send('Emulation.setCPUThrottlingRate', { rate: cpuThrottle });
    const errors = [];
    page.on('pageerror', error => errors.push(error.message));
    const samples = [];
    for (let run = 0; run < runs; run++) {
      await page.goto(url, { waitUntil: 'domcontentloaded' });
      await page.waitForFunction(() => window.lensInteractionReady, null, {
        timeout: 60000,
      });
      samples.push(await page.evaluate(async selected => {
        const frame = () => new Promise(requestAnimationFrame);
        if (selected) {
          window.lensSelectTable('public.table_1');
          await new Promise(resolve => setTimeout(resolve, 300));
        }
        await frame();
        await frame();
        const intervals = [];
        let last = performance.now();
        for (let step = 1; step <= 60; step++) {
          window.lensBrowserScroll(step * 48);
          await frame();
          const now = performance.now();
          intervals.push(now - last);
          last = now;
        }
        const searchStart = performance.now();
        for (const query of ['table_4', 'table_49', 'field_10', 'missing', '']) {
          window.lensBrowserSearch(query);
          await new Promise(resolve => setTimeout(resolve, 140));
          await frame();
        }
        intervals.sort((a, b) => a - b);
        return {
          tables: 200,
          scrollFrames: intervals.length,
          scrollMedianMs: intervals[30],
          scrollP95Ms: intervals[57],
          scrollMaxMs: intervals[59],
          fiveSearchesMs: performance.now() - searchStart,
          state: JSON.parse(window.lensInteractionState()),
        };
      }, selected));
    }
    if (errors.length) throw new Error(errors.join('\n'));
    console.log(JSON.stringify({ cpuThrottle, selected, samples }, null, 2));
  } finally {
    await browser.close();
  }
}

main().catch(error => {
  console.error(error);
  process.exitCode = 1;
});
