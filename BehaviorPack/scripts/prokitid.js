import * as mcs from "@minecraft/server";
import * as mcsui from "@minecraft/server-ui";
import {
  system,
  CommandPermissionLevel,
  CustomCommandParamType,
  CustomCommandStatus
} from "@minecraft/server";

system.beforeEvents.startup.subscribe((init) => {
  const argsEnum = ["maker","name"];
  init.customCommandRegistry.registerEnum("prokitid:args", argsEnum);

  const infoCmd = {
    name: "prokitid:info",
    description: "Information Of This Add-on",
    permissionLevel: CommandPermissionLevel.Admin,
    cheatsRequired: false
  };

  init.customCommandRegistry.registerCommand(infoCmd, infoHandler);
});

function infoHandler(origin) {
  console.log(JSON.stringify(origin));
  return { status: CustomCommandStatus.Success };
}

const init = async () => {
  console.log("init function called");
  //console.log("prokitid.scripts.fn");

}

init();
