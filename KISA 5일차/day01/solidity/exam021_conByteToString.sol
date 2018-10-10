pragma solidity ^0.4.11;

contract Example021 { 
    function stringFunction() returns (string stringValue, byte[] byteValue) {
        byte[] memory byteArray = new byte[] (7); 

        byteArray[0] = byte("S"); 
        byteArray[1] = byte("o"); 
        byteArray[1] = byte("t"); 
        byteArray[1] = byte("o"); 
        byteArray[1] = byte("L"); 
        byteArray[1] = byte("A"); 
        byteArray[1] = byte("B"); 

        stringValue = convertByteArrayToString(byteArray);
        byteValue = convertStringToByteArray("SotoLAB");   
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