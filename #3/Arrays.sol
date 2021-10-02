pragma solidity ^0.8.7 ;
// SPDX-License-Identifier: MIT


contract Arryas{
    
    uint[] public intArray = [1,2,3];
    
    string[] public strArray = ["one", "two", "three"];
    
    uint[][] public array = [ [1,2,3] , [4,5,6] ];
    
    function addTo(string memory _input) public {
        
        strArray.push(_input);
    }
    
    function count() public view returns(uint){
        return strArray.length;
    } 
}