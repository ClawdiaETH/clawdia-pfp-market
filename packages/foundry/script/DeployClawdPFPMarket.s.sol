// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./DeployHelpers.s.sol";
import "../contracts/ClawdPFPMarket.sol";

contract DeployClawdPFPMarket is ScaffoldETHDeploy {
    function run() external ScaffoldEthDeployerRunner {
        // $CLAWD token on Base
        address clawdToken = 0x9f86dB9fc6f7c9408e8Fda3Ff8ce4e78ac7a6b07;

        // Duration: 10 minutes for testing, 5 hours for production
        uint256 duration = 10 minutes;

        // Admin: deployer wallet (burner in dev, MetaMask in prod)
        address admin = deployer;

        new ClawdPFPMarket(clawdToken, duration, admin);
    }
}
