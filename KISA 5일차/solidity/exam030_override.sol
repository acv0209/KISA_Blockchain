pragma solidity ^0.4.11;

contract Star {
    function getFunction() constant returns (uint) {
        return 11;
    }
}

contract Sun {
    function getFunction() constant returns (uint) {
        return 5;
    }
}

contract Moon {
    function getFunction() constant returns (uint) {
        return 100;
    }
}

contract Child1 is Star, Sun {}

/*
contract Child2 is Sun, Star {}
contract Child3 is Sun, Moon {}
contract Child4 is Moon, Star {
    function getFunction() constant returns (uint) {
        return 116;
    }
}
*/