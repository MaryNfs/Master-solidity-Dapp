pragma solidity ^0.8.7;

// SPDX-License-Identifier: MIT

contract Maps{
    
    mapping(uint => string) public names; // key => value
    
    mapping(uint => Book) public books;
    
    //nested mapping, e.p. we want to have have books that belongs to someone else, or some address
    mapping(address => mapping(uint => Book)) public myNestedMapping;
    
    struct Book{
        string title;
        string author;
    }
    
    constructor() {
        
        names[1] = 'Mary';
        names[2] = 'pary';
        names[3] = 'sari';
    }
    
    function addBook(uint _id, string memory _title, string memory _author) public{
        
        books[_id] = Book(_title, _author);
    }
    
    function addBookForEachAddress(uint _id, string memory _title, string memory _author) public{
        //msg.sender will be the person who currently connecting with the contract.
        //in remix you can change the addresses in account part
        myNestedMapping[msg.sender][_id] = Book(_title, _author);
    }
}
