pragma solidity ^0.4.18;

import "./Math.sol";

contract Contract {
	function SafeMathSub() public pure returns (uint256) {
		uint256 aResult = SafeMath.sub(10,20);
		return aResult;
	}
	
	function UnsafeMathSub() public pure returns (uint256) {
		uint256 aResult = UnsafeMath.sub(10,20);
		return aResult;
	}	
}
