pragma solidity ^0.8.7 ;
// SPDX-License-Identifier: MIT


contract Mycontract {

    uint[] public numbers = [1,2,3,4,5,6,7,8,9,10];
    
    address public owner;
    
    constructor() {
        owner = msg.sender;
    }
    
    function countEventNumbers() public view returns(uint){
        
        uint count = 0;
        
        for (uint i=0; i< numbers.length; i++){
            if(checkIfEven(numbers[i])) count ++;
        }
        
        return count;
    }


    function checkIfEven (uint _number) public pure returns(bool){
        
        if (_number % 2 == 0) return true;
        else return false;
        
    }
    
    function checkOwner () public view returns(bool){
        
        return (owner == msg.sender);
    }
    
    
    
}