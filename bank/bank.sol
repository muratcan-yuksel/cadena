// SPDK-Lİcense-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Bank{
    //declare state variables at contract level
    adress public bankOwner;
    string public bankname;
    mapping(address => uint 256) public customerBalance;

    constructor(){
        bankOwner=msg.sender; //initialize state variable
    }
    
    function depositMoney() public payable{
        require(msg.value != 0, "You need to deposit some amount of money!");
        customerBalance[msg.sender] += msg.value; 
    }
    
    
    
    
    }