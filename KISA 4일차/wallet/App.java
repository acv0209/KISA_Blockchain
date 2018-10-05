//package com.sotolab;

import java.util.Arrays;

import java.io.IOException;
import java.security.PublicKey;

import io.blocko.coinstack.ECKey;

import io.blocko.coinstack.*;
import io.blocko.coinstack.exception.*;
import io.blocko.coinstack.model.*;

public class App {

    // String newPublicKey = "";
	// static String your_wallet_address = "";
	// static String newPrivateKeyWIF = "";
	
	// public static String SAMPLE_BLOCK_ID = "00001b9ff6cd68169cacec7adc9de065fd0d8ee9c8a2ded2d511492caf04f4d2";
	// public static String[] SAMPLE_TX_IDS = new String[] {
	// 		"b1aaea775b442f41c16e088041400ee540e97e37c4f7f4458af44c8ceb12999e",
	// 		"d146389546a3a13aa88d1271e655c48e6995c144c59710de41303f83c5685271",
	// };
	
	// public static String SAMPLE_PRIVKEY = "L5Ln2xNzDQ9S7d1Ly6v8Dx1zQQxPqGEtFpoVJJjDxC5qW5xmhLRd";
	// public static String SAMPLE_ADDRESS = "1J6pc2mhPPiK6uUYtncjQwbP42n8p13SfH";
	
	// public static String SAMPLE_RECEIVER_ADDR1 = "1A65VHc4ZGErUB6PbnHaFHV83smFhMwv7W";
	// public static String SAMPLE_RECEIVER_ADDR2 = "1ABZFRrv6FiriYfsYhtz3Usuh4okr1zni2";
	
	// public static byte[] SAMPLE_TX_DATA = "SAMPLE_TEXT".getBytes();
	// //public static byte[] SAMPLE_TX_DATA = "SAMPLE_TEXT".getBytes();
	
	public static CoinStackClient createNewClient() {
		// Client 객체 생성
		CredentialsProvider credentials = null;
		AbstractEndpoint endpoint = new AbstractEndpoint() {
			@Override
			public String endpoint() {
				return "http://testchain.blocko.io";
			}
			@Override
			public boolean mainnet() {
				return true;
			}
			@Override
			public PublicKey getPublicKey() {
				return null;
			}
		};
		CoinStackClient client = new CoinStackClient(credentials, endpoint);
		return client;
	}
	
	
	
	public static CoinStackClient _client = null;
	
	public static CoinStackClient getClient() {
		if (_client == null) {
			_client = createNewClient();
		}
		return _client;
	}
	
	

    // public void Transaction(CoinStackClient client) throws IOException, CoinStackException {
	// 	System.out.println("+ Transaction");
		
	// 	// create a target address to send
	// 	String toPrivateKeyWIF = ECKey.createNewPrivateKey();
	// 	String toAddress = ECKey.deriveAddress(toPrivateKeyWIF);

	// 	// create a transaction
	// 	long amount = io.blocko.coinstack.Math.convertToSatoshi("0.00001");
	// 	long fee = io.blocko.coinstack.Math.convertToSatoshi("0.0001");

	// 	TransactionBuilder builder = new TransactionBuilder();
		
	// 	builder.addOutput(toAddress, amount);
	// 	builder.setFee(fee);
	// 	builder.allowDustyOutput(true);
	// 	builder.setData("DATA_AT_OP_RETURN".getBytes());

	// 	// sign the transaction
	// 	String signedTx = client.createSignedTransaction(builder, newPrivateKeyWIF);
	// 	System.out.println(signedTx);
		
	// 	// send the signed transaction
	// 	client.sendTransaction(signedTx);
		
	// 	String txId = TransactionUtil.getTransactionHash(signedTx);
		
	// 	// print transaction
	// 	io.blocko.coinstack.model.Transaction tx = client.getTransaction(txId);
	// 	System.out.println(tx.getConfirmationTime());
	// }
	
	// public void getBalance(CoinStackClient client) throws IOException, CoinStackException {
	// 	System.out.println("+ getBalance");
	// 	System.out.println("address			: " + your_wallet_address);
		
	// 	// get a remaining balance
	// 	long balance = client.getBalance(your_wallet_address);
	// 	double result  = balance /10000000.0;
	// 	System.out.printf("My bitCoin: %.8f",result);
	// 	System.out.println("");
	// 	//System.out.printf("%.2f", 33.3333);

	// 	// print all transactions of a given wallet address
	// 	String[] transactionIds = client.getTransactions(your_wallet_address);
	// 	System.out.println("transactions		: ");
	// 	for (String txId : transactionIds) {
	// 		System.out.println(txId);
	// 	}

	// 	// print all utxos
	// 	Output[] outputs = client.getUnspentOutputs(your_wallet_address);
	// 	System.out.println("unspent outputs		:");
	// 	for (Output utxo : outputs) {
	// 		System.out.println(utxo.getValue());
	// 	}
	// }



    public static void main(String[] args) throws IOException, CoinStackException {
		System.out.println("# SampleMain");
		
		CoinStackClient client = getClient();
		BlockchainStatus status = client.getBlockchainStatus();
        String bestBlockHash = status.getBestBlockHash();

        System.out.println("### blockchain status");
		SampleBlockchain.sampleBlockchainStatus(client);

        System.out.println("### recent blocks");
	 	SampleBlockchain.sampleRecentBlocks(client);
		
	 	System.out.println("### get block: "+bestBlockHash);
	 	SampleBlockchain.sampleGetBlock(client, bestBlockHash);





        System.out.println("## SampleKey");		
		System.out.println("### create key");
		String address = SampleKey.sampleCreateKey();







        


		System.out.println("## SampleGetBalance");
		
		//CoinStackClient client = SampleMain.getClient();
		//String address = SampleMain.SAMPLE_ADDRESS;
		
		
		System.out.println("### get balance: "+address);
		SampleAddress.sampleGetBalance(client, address);
		
		System.out.println("### get utxo: "+address);
		SampleAddress.sampleGetUtxo(client, address);
		
		System.out.println("### get history: "+address);
		SampleAddress.sampleGetHistory(client, address);   






		System.out.println("## SampleTxBuild");

	    String SAMPLE_PRIVKEY = "L5Ln2xNzDQ9S7d1Ly6v8Dx1zQQxPqGEtFpoVJJjDxC5qW5xmhLRd";
	    String SAMPLE_ADDRESS = "1J6pc2mhPPiK6uUYtncjQwbP42n8p13SfH";
	
    	String SAMPLE_RECEIVER_ADDR1 = "1A65VHc4ZGErUB6PbnHaFHV83smFhMwv7W";
	    String SAMPLE_RECEIVER_ADDR2 = "1ABZFRrv6FiriYfsYhtz3Usuh4okr1zni2";
	
	    byte[] SAMPLE_TX_DATA = "SAMPLE_TEXT".getBytes();
        
		
		String privateKeyWIF = SAMPLE_PRIVKEY;
		String receiverAddr1 = SAMPLE_RECEIVER_ADDR1;
		String receiverAddr2 = SAMPLE_RECEIVER_ADDR2;
		byte[] txdata = SAMPLE_TX_DATA;
		
		
		System.out.println("### send simple tx");
		SampleTxBuild.sampleSendSimpleTx(client, privateKeyWIF, receiverAddr1, "0.0001");
		
		System.out.println("### send data tx");
		SampleTxBuild.sampleSendDataTx(client, privateKeyWIF, receiverAddr2, "0.0001", txdata);              

	}
	
}