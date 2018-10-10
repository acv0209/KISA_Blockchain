pragma solidity ^0.4.18;

library SafeMath {
	function sub(uint256 a, uint256 b) internal pure returns (uint256) {
		assert(b <= a);
		return a - b;
	}
}

library UnsafeMath {
	function sub(uint256 a, uint256 b) internal pure returns (uint256) {
		return a - b;
	}
}