import {parse} from 'libpg-query';
// SQL never leaves this worker and is never executed against a database.
self.onmessage = async ({data}) => {
  try {
    self.postMessage({ast: await parse(data)});
  } catch (error) {
    self.postMessage({error: error.message, position: error.sqlDetails?.cursorPosition});
  }
};
