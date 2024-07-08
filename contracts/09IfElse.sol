// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract IfElse {
    function ifElse(uint8 score) public pure returns(bytes1) {
        if (score >= 90){
            return 'A';
        } else if (score >= 60) {
            return 'B';
        } else {
            return 'C';
        }
    }

    // 三元运算
    function ternary(uint8 score) public pure returns (bytes1) {
        return score >= 90 ? bytes1('A') : (score >= 60 ? bytes1('B') : bytes1('C'));
    }
}