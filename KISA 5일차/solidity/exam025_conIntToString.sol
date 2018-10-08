pragma solidity ^0.4.11;

contract Example025 { 
    function conIntToStringFunction() returns (string value) {
        value = convertIntToString(-123);
    }

    function convertIntToString(int n) returns (string) {
        uint length = 10;
        uint i = 0; int d; int t; int v = n;
        
        if(n < 0) {
            v *= -1;
        }

        for(uint j = 1; j <= length; j++) {
            d = int(10 ** (length - j));
            
            t = v % d;
            
            if((v - t) / d > 0) {
                length = (length - j) + 1;
                
                break;
            }
        }

        bytes memory buffer;
        if(n < 0) {
            buffer = new bytes(length + 1);
            
            buffer[i] = byte("-");
            i = 1;
        }
        else {
            buffer = new bytes(length);
        }

        for(j = 1; j <= length; j++) {
            d = int(10 ** (length - j));
            
            t = v % d;
            
            if((v - t) / d > 0) {
                buffer[i] = byte(((v - t) / d) + 48);
                
                v -= ((v - t) / d) * int(10 ** (length - j));
                i++;
            }
        }
        
        return convertBytesToString(buffer);
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