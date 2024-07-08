// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "hardhat/console.sol";

contract Constants {
    //常量声明时必须初始化,且之后不可修改,使用常量可以节省gas
    address public constant MY_ADDRESS = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    uint32 public constant DAY_OF_MONTH = 30;
}