pragma solidity ^0.4.11;

contract Example028 { 
    mapping (address => uint) public balances; 
    
    function setBalance(uint input) {
        balances[msg.sender] = input;
    } 
}

contract BalanceChecker {
    function getBalance(uint input) returns (uint) {
        Example028 e = new Example028();
        e.setBalance(input);
        return e.balances(this);
    }
}