// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.20;

import {HorseStore} from "../../src/horseStoreV1/HorseStore.sol";
import {Test, console2} from "forge-std/Test.sol";

abstract contract Base_TestV1 is Test {
    HorseStore public horseStore;

    function setUp() public virtual {
        horseStore = new HorseStore();
    }

    function testReadValue() public view {
        assertEq(horseStore.readNumberOfHorses(), 0);
    }

    function testWriteValue(uint256 numHorses) public {
        horseStore.updateHorseNumber(numHorses);
        assertEq(horseStore.readNumberOfHorses(), numHorses);
    }
}