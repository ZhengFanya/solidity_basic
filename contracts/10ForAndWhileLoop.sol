// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ForAndWhileLoop {
    function forLoop(uint256 num) public pure returns (uint256) {
        uint256 sum = 0;
        for (uint i = 0; i < num; i++) {
            if (i % 2 == 0) {
                continue;
            }
            sum += i;
        }
        return sum;
    }

    function whileLoop(uint num) public pure  {
        while (num < 7) {
            if (num == 7) {
                break;
            }
            num += 1;
        }
    }
}