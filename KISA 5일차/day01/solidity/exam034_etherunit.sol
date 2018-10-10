pragma solidity ^0.4.11;

contract Example034 {
    uint[5]    result;
    bytes32[5] value;

    function getEthFunction() returns (uint, uint, uint, uint, uint ) {
        uint8 star = 100 wei;
        uint8 sun = 100;

        uint moon = 0.005 ether;
        uint soto = 5 finney;
        uint lab = 5000 szabo;

        result[0] = star;
        result[1] = sun;
        result[2] = moon;
        result[3] = soto;
        result[4] = lab;

        return (result[0], result[1], result[2], result[3], result[4]);
    }

    function getTimeFunction() returns (uint, uint, uint, uint, uint ) {
        uint star = 1 minutes;
        uint sun = 1 hours;

        uint moon = 1 days;
        uint soto = 1 weeks;
        uint lab = 1 years;

        result[0] = star;
        result[1] = sun;
        result[2] = moon;
        result[3] = soto;
        result[4] = lab;

        return (result[0], result[1], result[2], result[3], result[4]);
    }

    function mathFunction() returns (bytes32, bytes32, bytes32, bytes32, bytes32 ) {
        bytes32 star = keccak256("star", "sun", "moon");
        bytes32 sun  = keccak256("starsunmoon");
        bytes32 moon = keccak256(11,5,1);
        bytes32 soto = keccak256(0x123456);
        bytes32 lab  = keccak256(123456);

        value[0] = star;
        value[1] = sun;
        value[2] = moon;
        value[3] = soto;
        value[4] = lab;

        return (value[0], value[1], value[2], value[3], value[4]);
    }
    


}
