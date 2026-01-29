// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./DeployHelpers.s.sol";
import "../contracts/ClawdiaPFPMarket.sol";

contract DeployClawdiaPFPMarket is ScaffoldETHDeploy {
    function run() external ScaffoldEthDeployerRunner {
        // $CLAWDIA token on Base
        address clawdiaToken = 0xbbd9aDe16525acb4B336b6dAd3b9762901522B07;

        // Duration: configurable via env, default 24 hours
        uint256 duration = vm.envOr("ROUND_DURATION", uint256(24 hours));

        // Admin: Clawdia's wallet
        address admin = vm.envOr("ADMIN_ADDRESS", address(0x615e3faa99dd7de64812128a953215a09509f16a));

        // Stake amount: configurable via env, default 50000 CLAWDIA
        uint256 stakeAmount = vm.envOr("STAKE_AMOUNT", uint256(50000e18));

        ClawdiaPFPMarket market = new ClawdiaPFPMarket(clawdiaToken, duration, admin, stakeAmount);
        console.log("ClawdiaPFPMarket deployed at:", address(market));
        console.log("  Admin:", admin);
        console.log("  Duration:", duration, "seconds");
        console.log("  Stake amount:", stakeAmount / 1e18, "CLAWDIA");
        console.log("  CLAWDIA token:", clawdiaToken);
    }
}
