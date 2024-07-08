// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Error {
    function testRequire(uint256 x) public pure {
        require(x <= 10,"Input must greater than 10!");
    }

    function testRevert(uint256 x) public pure {
        if(x <= 10) {
            revert("Input must greater than 10!");
        }
    }

    uint256 public num;
    function testAssert() public view {
        assert(num == 0);
    }

    error InsufficentBalance(uint256 balance,uint256 withdrawAmount);

    function testCustomeError(uint256 _withdrawAmount) public view {
        uint256 bal = address(this).balance;
        if(bal < _withdrawAmount) {
            revert InsufficentBalance({balance : bal, withdrawAmount : _withdrawAmount});
        }
    }

    uint256 public balance;
    uint256 public constant MAX_UINT = 2 ** 256 - 1;

    function deposit(uint256 _amount) public {
        uint256 oldBalance = balance;
        uint256 newBalance = balance + _amount;

        require(newBalance > oldBalance,"overflow");
        balance = newBalance;
        assert(balance> oldBalance);
    }

    function withdraw(uint256 _amount) public {
        uint256 oldbalance = balance;
        require(balance >= _amount,"uderflow");
        if(balance < _amount){
            revert("underflow");
        }
        balance -= _amount;
        assert(balance <= oldbalance);
    }
}