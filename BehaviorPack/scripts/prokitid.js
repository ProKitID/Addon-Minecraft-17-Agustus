import * as mcs from "@minecraft/server";
import * as mcsui from "@minecraft/server-ui";

var module = {
  server: mcs,
  server-ui: mcsui,
};

const init = async () => {
  console.log("init function called");

}

init();
