pragma solidity ^0.4.11;

contract Example016 {
    uint[3] globalStaticArray = [1, 2, 3];
    uint[] globalDynamicallyArray = [1, 2, 3];
    uint[] globalDynamicallyArrayEmpty;
    uint[4] result;
    
    function arrayDynamic() returns (uint, uint, uint, uint ) {
        uint[2] localStaticArray1;      // localStaticArray1.length = 2;
        uint[4**2] localStaticArray2;   // localStaticArray2.length = 16;
        uint[] memory localDynamicallyArray = new uint[](5);	// localDynamicallyArray = 5;
        uint[2][2] localDynamically2DimensionalArray;

        result[0] = localStaticArray1.length;
        result[1] = localStaticArray2.length;
        result[2] = localDynamicallyArray.length;
        result[3] = localDynamically2DimensionalArray.length;

        return (result[0], result[1], result[2], result[3]);
    }
}