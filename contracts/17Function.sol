// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Function {
    function returnMany() public pure returns(uint256,bool,uint256) {
        return (1,false,2);
    }

    function named() public pure returns(uint256 x,bool b) {
        return (1,true);
    }
    
    function assigned() public pure returns(uint256 x,bool b,uint256 y) {
        x = 1;
        b = true;
        y = 255;
    }

    function destructuringAssignments() public pure returns(uint256,bool,uint256,uint256,uint256) {
        (uint256 a,bool b,uint256 c) = returnMany();
        (uint256 x,,uint256 y) = (4,5,6);
        return (a,b,c,x,y);

    }

    function arr_input(uint256[] memory _arr) public {} 

    uint256[] public arr;

    function arr_output() public view returns(uint256[] memory) {
        return arr;
    }
}