pragma solidity ^0.4.11;

contract Example029 {
	struct coinWallet {
		uint redCoin;
		uint greenCoin;
		string userName;
	}

	coinWallet public myWallet;
	mapping (address => coinWallet) public allWallets;

	function Example029(){
		myWallet.redCoin = 500;
		myWallet.greenCoin = 250;
		myWallet.userName = "SotoLAB";

		allWallets[tx.origin] = myWallet;
	}
        
	function GetRed() returns (uint redAmount){
		return myWallet.redCoin;
	}

    function SetRed(uint input){
        myWallet.redCoin = input;
	}

    function SetGreen(uint input){
        myWallet.greenCoin = input;
	}

	function GetTotal() returns (uint totalAmount){
		return myWallet.redCoin + myWallet.greenCoin;
	}    
}