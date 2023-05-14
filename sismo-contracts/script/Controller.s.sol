// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import {Controller} from "../src/Controller.sol";

contract DeployController is Script {
  // bytes16 public constant APP_ID = 0xf4977993e52606cfd67b7a1cde717069;

  function run() public {
    vm.startBroadcast();
    Controller controller = new Controller("My airdrop contract", "AIR");
    console.log("Controller Contract deployed at", address(controller));
    vm.stopBroadcast();
  }
}
