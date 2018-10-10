pragma solidity ^0.4.11;

contract Example024 { 
    function conStringToIntFunction() returns (int value) {
        value = convertStringToInt("-123");
    }

    function convertStringToInt(string stringValue) returns (int) {
        bytes memory byteValue = convertStringToBytes(stringValue);

        int result = 0;
        uint start = 0;
        int phase = 1;

        for(uint i = 0; i < byteValue.length; i++) {
            if((byteValue[i] < byte("0") || byteValue[i] > byte("9"))
            && (byteValue[i] != byte("+") && byteValue[i] != byte("-"))) {
                return 0;
            }
        }

        if(byteValue[0] == byte("-")) {
            phase = -1;
            start = 1;
        }
        else if(byteValue[0] == byte("+")) {
            start = 1;
        }

        for(uint j = start; j < byteValue.length ; j++) {
            result += (int(byteValue[j]) - 48) * int(10 ** (byteValue.length - (j + 1)));
        }
        result *= phase;

        return result;
    } 

     function convertBytesToString(bytes value) returns (string) {
        return string(value);
    }
    
    function convertStringToBytes(string str) returns (bytes) {
        return bytes(str);
    }

    function convertByteArrayToString(byte[] value) returns (string) {
        bytes memory buffer = new bytes(value.length);
        for(uint i = 0; i < buffer.length; i++) {
            buffer[i] = value[i];
        }        
        return string(buffer);
    }

    function convertStringToByteArray(string str) returns (byte[]) {
        bytes memory data = bytes(str);
        byte[] memory buffer = new byte[](data.length);
        
        for(uint i = 0; i < buffer.length; i++) {
            buffer[i] = byte(data[i]);
        }
        
        return buffer;
    }  
}