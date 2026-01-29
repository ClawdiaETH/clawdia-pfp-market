// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../contracts/ClawdiaPFPMarket.sol";

contract DeployPFP is Script {
    function run() external {
        address clawdiaToken = 0xbbd9aDe16525acb4B336b6dAd3b9762901522B07;
        uint256 duration = 86400;
        address admin = 0x84d5e34Ad1a91cF2ECAD071a65948fa48F1B4216;
        uint256 stakeAmount = 50000000000000000000000;
        
        vm.startBroadcast();
        ClawdiaPFPMarket market = new ClawdiaPFPMarket(
            clawdiaToken,
            duration,
            admin,
            stakeAmount
        );
        vm.stopBroadcast();
        
        console.log("Deployed to:", address(market));
    }
}
