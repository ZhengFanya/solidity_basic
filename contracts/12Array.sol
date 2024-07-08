// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "hardhat/console.sol";

contract Array {
    uint256[] public arr = new uint256[](10);
    uint256[] public arr1 = [2, 7, 1];
    uint256[5] public arr2;

    function get(uint256 index) public view returns (uint256) {
        require(index < arr.length,"index out of bound");
        return arr[index];
    }

    function getArr() public view returns (uint256[] memory) {
        return arr;
    }

    function push(uint256 _i) public {
        arr.push(_i);
    }

    function pop() public {
        arr.pop();
    }

    function getLength() public view returns (uint256) {
        return arr.length;
    }

    //并不会将该索引处的元素删除，只是将其置为默认值
    function remove(uint256 index) public {
        delete arr[index];
    }

    function removeElement(uint256 index) public {
        require(index < arr1.length,"index out of bound");
        for (uint256 i = index; i < arr1.length - 1; i++){
            arr1[i] = arr1[i+1];
        }
        
        arr1.pop();
    }

    function testRemoveEle() public {
        removeElement(0);
        console.log(arr1.length);
        console.log(arr1[0]);
    }

    function removeElementByCopy(uint256 index) public {
        arr1[index] = arr1[arr1.length-1];
        arr1.pop();
    }

    function testRemoveEleByCopy() public {
        removeElementByCopy(1);
        console.log(arr1.length);
        console.log(arr1[1]);
    }
}