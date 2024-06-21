// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.20;

import {Base_TestV1, HorseStore} from "./Base_TestV1.t.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";

contract HorseStoreSolc is Base_TestV1 {
    function setUp() public override {
        horseStore = HorseStore(HuffDeployer.config().deploy("horseStoreV1/HorseStore"));
    }
}