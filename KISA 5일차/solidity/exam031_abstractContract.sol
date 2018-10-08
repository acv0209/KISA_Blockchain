pragma solidity ^0.4.11;

contract Example031 {
    function loan() public returns(bool);
}

contract Account is Example031 {
    uint private balance = 1000;
    function loan() public returns(bool) {
        if(balance > 0)
            return true;
        return false;
    }
}