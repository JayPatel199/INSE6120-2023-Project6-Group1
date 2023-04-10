// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


contract MrRobot {
    mapping(address => uint) public balances;
 
 
/*
// Remove comment/Activate this code block to fix the vulnerability :) 
bool internal locked;
    modifier noReentrant() {
        require(!locked, "No re-entrancy");
        locked = true;
        _;
        locked = false;
    }

     function withdraw() public noReentrant{
        uint bal = balances[msg.sender];
        require(bal > 0);
        (bool sent, ) = msg.sender.call{value: bal}("");
        require(sent, "Failed to send Ether");
        balances[msg.sender] = 0;
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }

// look at the comment on line 39 to fix the vulnerability :)

*/
