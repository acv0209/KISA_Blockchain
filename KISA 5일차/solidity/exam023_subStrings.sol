pragma solidity ^0.4.11;

contract Example023 { 
    function subStringFunction() returns (string myString) {
        myString = subString("SotoLAB, ", 0, 4);
    }

    function subString(string str, uint start, uint length) returns (string) {
        bytes memory fullBytes = bytes(str);

        if(start + length > fullBytes.length) {
            return str;
        }

        bytes memory result = new bytes(length);
        for(uint i = 0; i < length; i++) {
            result[i] = fullBytes[start + i];
        }
        return string(result);
    }  
}