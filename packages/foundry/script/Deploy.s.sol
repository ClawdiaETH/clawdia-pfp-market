//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./DeployHelpers.s.sol";
import { DeployClawdiaPFPMarket } from "./DeployClawdiaPFPMarket.s.sol";

contract DeployScript is ScaffoldETHDeploy {
  function run() external {
    DeployClawdiaPFPMarket deployPFPMarket = new DeployClawdiaPFPMarket();
    deployPFPMarket.run();
  }
}
