// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.20;

import {Base_TestV1, IHorseStore} from "./BaseTestV1.t.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";

contract HorseStoreHuff is Base_TestV1 {
    function setUp() public override {
        horseStore = IHorseStore(HuffDeployer.config().deploy("horseStoreV1/HorseStore"));
    }
}