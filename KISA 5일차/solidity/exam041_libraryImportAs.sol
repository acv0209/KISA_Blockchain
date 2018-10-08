pragma solidity ^0.4.18;

import * as Math from "./Math.sol";

contract Contract {
	function SafeMathSub() public pure returns (uint256) {
		uint256 aResult = Math.SafeMath.sub(10,20);
		return aResult;
	}
	
	function UnsafeMathSub() public pure returns (uint256) {
		uint256 aResult = Math.UnsafeMath.sub(10,20);
		return aResult;
	}	
}



