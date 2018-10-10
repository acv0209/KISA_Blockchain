pragma solidity ^0.4.11;

contract Example018 {  
    byte[4] result;

    function fixedByteArray() returns (byte andValue, byte orValue, byte xorValue, byte negationValue ) {
        byte value1 = 0x00; // 00000000 = 0
        byte value2 = 0xff; // 11111111 = 255
        
        andValue = value1 & value2;
        orValue = value1 | value2;
        xorValue = value1 ^ value2;
        negationValue = ~value1;

        result[0] = andValue;
        result[1] = orValue;
        result[2] = xorValue;
        result[3] = negationValue;

        return (result[0], result[1], result[2], result[3]);
    }
}