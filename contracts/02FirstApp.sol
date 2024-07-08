// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Counter {
    uint256 public count;

    function get() public view returns (uint256) {
        return count;
    }

    function increment() public {
        count += 1;
    }

    // 当count值为0时会失败，因为uint为非负整数
    function decrement() public  {
        count -= 1;
    }
}