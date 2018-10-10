pragma solidity ^0.4.18;

import {SafeMath as Math} from "./Math.sol";

contract Contract {
	function SafeMathSub() public pure returns (uint256) {
		uint256 aResult = Math.sub(10,20);
		return aResult;
	}
	
	function UnsafeMathSub() public pure returns (uint256) {
		uint256 aResult = Math.sub(10,20);
		return aResult;
	}	
}
