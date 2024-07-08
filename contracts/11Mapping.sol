// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract DataTypeMapping {
    mapping(address => uint256) public myMap;

    function get(address addr) public view returns (uint256) {
        return myMap[addr];
    }

    function set(address _addr, uint256 _i) public {
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        delete myMap[_addr];
    }

    mapping(address => mapping(uint256 => bool)) public nestedMap;

    function getNestedMap(address _addr, uint256 _i) public view returns (bool) {
        return nestedMap[_addr][_i];
    }

    function setNestedMap(address _addr, uint256 _i, bool _b) public {
        nestedMap[_addr][_i] = _b;
    }

    function removeNestedMap(address _addr, uint256 _i) public {
        delete nestedMap[_addr][_i];
    }
}