// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ImmutableVariables {
    address public immutable MY_ADDR;
    uint256 public immutable LEVEL;

    // 不可变常量可以在构造函数种初始化，但初始化后不可修改
    constructor(uint256 level) {
        LEVEL = level;
        MY_ADDR = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    }
}