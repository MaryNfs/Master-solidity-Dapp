pragma solidity ^0.8.7 ;
// SPDX-License-Identifier: MIT

contract DataTypes{
    
    //state variables == public variables
    
    address public myAddress = 0x9b51A88Cffe9B50E043661ddD7F492cc3888fcbF ;
    
    string public myString = 'Hello';
    
    uint public myUint = 1;
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;
    int public muInt = 1;
    
    struct Mystruct {
        uint id;
        string name;
    }
    
    Mystruct public myStruct = Mystruct(1, 'maryam');
    
    //local varibale (we can use them only on their own scope)
    function localVar() public pure returns(uint){
        //View It indicates that the function will not alter the storage state in any way.
        //Pure This is even more restrictive, indicating that it won't even read the storage state.

        uint value = 100;
        return value;
    }
}