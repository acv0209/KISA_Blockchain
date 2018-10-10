pragma solidity ^0.4.11;

contract Example020 {  
    function byteString() returns (string result) {
        bytes memory byteArray;  
        byteArray = "SotoLAB";
        return string(byteArray);
    }
}