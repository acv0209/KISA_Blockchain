pragma solidity ^0.4.11;

contract Example019 {  
    bytes result;

    function dynamicByteArray() returns (bytes ) {        
        /*
        bytes2 staticByteArray;
        staticByteArray = "staticByteArray";
        result = staticByteArray;
        return (result);
        /*
        
        bytes memory dynamicByteArray = new bytes(2);
        dynamicByteArray = "dynamicByteArray";
        result = dynamicByteArray;
        return (result);
    
    }
}