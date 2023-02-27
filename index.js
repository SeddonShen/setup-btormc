const core = require("@actions/core");
const exec = require("@actions/exec");

async function run() {
  try {
    await exec.exec(`bash ${__dirname}/../build.sh`);
  } catch (error) {
    core.setFailed(error.message);
  }
}

run();