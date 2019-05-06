// tasks/faktory-export.js
const faktory = require("faktory-worker");

module.exports = async (payload) => {
  // https://github.com/contribsys/faktory/wiki/The-Job-Payload
  const faktoryClient = await faktory.connect();

  const jid = await faktoryClient.push(payload);

  console.log(`Received jid from Faktory: ${jid}. Thanks Faktory!`);

  await faktoryClient.close();
};
