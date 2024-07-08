// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Promitives {
    bool public boo = true;

    /*
    uint无符号整数（非负整数），有uint8~uint256,数字必须为8的整数倍。uint即为uint256
    uint8的范围为0~2*8-1
    uint16的范围为0~2*16-1
    uint32的范围为0~2*32-1
    ...
    uint256的范围为0~2*256-1
    */
    uint8 public u8 = 1;
    uint256 public u256 = 456;

    /*
    int带符号整数，同样为int8~int256，数字必须为8的整数。int即为int256
    int8的范围为-2*7~2*7-1
    int16的范围为-2*16~2*16-1
    int32的范围为-2*32~2*32-1
    ...
    int256的范围为-2*255~2*255-1
    */
    int8 public i8 = 1;
    int256 public i256 = -456;

    //使用type函数取某个数据类型的最大最小值
    int256 public maxNum = type(int256).max;
    int256 public minNum = type(int256).min;

    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    //bytes为静态字节数组，共有32种静态数组bytes1~bytes32。bytes相当于bytes32
    bytes b = '123456789asdfghjklpoiuytrewqzxcv';
    bytes1 b1 = 0xb5;
    bytes32 b32 = '123456789asdfghjklpoiuytrewqzxcv';

    //默认值
    bool public defaultBoolValue;   //false
    uint256 public defaultUintValue;//0
    int256 public defaultIntValue;  //0
    address public defailtAddressValue; //0x0000000000000000000000000000000000000000
    bytes32 public defaultBytesValue;   //0x0000000000000000000000000000000000000000000000000000000000000000
}