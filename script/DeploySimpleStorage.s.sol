// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

// To tell that this contract is a script, we need there imports
import {Script} from "forge-std/Script.sol";
// Here we also need to import SimpleStorage contract from the src folder.
import {SimpleStorage} from "../src/SimpleStorage.sol";

/**
 * @title This is a script to deploy the Simple storage contract
 * @author Soumil Vavikar
 * @notice NA
 */
contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        // The vm keyword ONLY works for Foundry and doesn't work with base solidity
        vm.startBroadcast();
        // Any transaction that we want to execute HAS to be coded/written between start and stop broadcast comamnds.
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();

        return simpleStorage;
    }
}
