pragma solidity ^0.4.11;

contract Example022 { 
    function mergeFunction() returns (string myString) {
        myString = mergeStrings("Soto","LAB");
    }

    function mergeStrings(string stringValue1, string stringValue2) returns (string) {
        bytes memory value1 = bytes(stringValue1);
        bytes memory value2 = bytes(stringValue2);
        
        bytes memory result  = new bytes(value1.length + value2.length);
        for(uint n = 0; n < value1.length; n++) {
            result[n] = value1[n];
        }
        
        uint i = value1.length;
        for(n = 0; n < value2.length; n++) {
            result[i + n] = value2[n];
        }
        
        return string(result);
    }
}