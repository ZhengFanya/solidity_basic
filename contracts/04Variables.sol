// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "hardhat/console.sol";

/*
3种类型的变量
*/
contract Variables {
    // 状态变量，声明在函数外，存储在链上
    string public text = "hello";
    uint8 public num = 123;

    function doSomething() public {
        // 本地变量，生命在函数内，不存储在链上，函数执行完即消失
        uint8 u = 255;
        // 全局变量，提供链上的信息。如下面的block和msg
        uint256 timestamp = block.timestamp;//当前块的时间戳
        address sender = msg.sender;//调用者的地址
        console.log("timestamp:%s",timestamp);
        console.log("sender:%s",sender);
    }
}