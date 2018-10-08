pragma solidity ^0.4.18;

library SafeMath {
  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }
}

contract Calculator {
    using SafeMath for uint256;
    
    function add() public pure returns (uint256, uint256) {
        uint256 a = 5;
        uint256 b = a.add(3);
        uint256 c = a.add(2);
        return (b, c);
  }
}
