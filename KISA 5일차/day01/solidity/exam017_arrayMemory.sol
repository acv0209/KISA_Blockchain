pragma solidity ^0.4.11;

contract Example017 {
    uint32[3] globalStaticArray = [1, 2, 3];
    uint8[] globalDinamicallyArray = new uint8[](8);
    uint256[3] globalErrorArray = [1234, 5678, 9012];
    uint[3] result;
    
    function arrayMemory() returns (uint, uint, uint ) {
        uint8[3] memory localStaticArray = [1, 2, 3];
        uint8[] memory localErrorArray = new uint8[](localStaticArray.length);
        uint8[] localDinamicallyArray = globalDinamicallyArray;

        result[0] = localStaticArray.length;
        result[1] = localErrorArray.length;
        result[2] = localDinamicallyArray.length;

        return (result[0], result[1], result[2]);
    }
}