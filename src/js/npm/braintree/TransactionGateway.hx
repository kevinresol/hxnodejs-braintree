package js.npm.braintree;

import js.support.Callback;
import js.npm.braintree.Types;
import js.npm.braintree.options.*;

extern class TransactionGateway
{
	public function sale(options:SaleOptions, cb:Callback<TransactionResult>):Void;

	@:overload(function(transactionId:String, cb:Callback<TransactionResult>):Void {})
	public function submitForSettlement(transactionId:String, amount:String, cb:Callback<TransactionResult>):Void;
	
	public function refund(transactionId:String, cb:Callback<TransactionResult>):Void;
	public function void(transactionId:String, cb:Callback<TransactionResult>):Void;
	
	public function find(transactionId:String, cb:Callback<Transaction>):Void;
	public function search(searcher:Dynamic->Bool, cb:Callback<Dynamic>):Void;
	
	public function cancelRelease(transactionId:String, cb:Callback<TransactionResult>):Void;
	public function holdInEscrow(transactionId:String, cb:Callback<TransactionResult>):Void;
	public function releaseFromEscrow(transactionId:String, cb:Callback<TransactionResult>):Void;
	
	public function cloneTransaction(transactionId:String, options:CloneTransactionOptions, cb:Callback<TransactionResult>):Void;
}

private typedef SaleOptions =
{
	amount:String, //Required, String
	?billing:AddressOption,
	?billingAddressId:String,
	?channel:String,
	?customFields:{},
	?customer:CustomerOption,
	?customerId:String,
	?descriptor:Dynamic,
	?name:String,
	?phone:String,
	?url:String,
	?deviceData:String,
	?deviceSessionId:String,
	?merchantAccountId:String,
	?options: {
		?addBillingAddressToPaymentMethod:Bool,
		?holdInEscrow:Bool,
		?paypal: {
			?customField:Dynamic,
			?description:String,
		},
		?storeInVault:Bool,
		?storeInVaultOnSuccess:Bool,
		?storeShippingAddressInVault:Bool,
		?submitForSettlement:Bool,
	},
	?orderId:String,
	?paymentMethodNonce:String,
	?paymentMethodToken:String,
	?purchaseOrderNumber:String,
	?recurring:Bool,
	?serviceFeeAmount:String,
	?shipping:AddressOption,
	?shippingAddressId:String,
	?taxAmount:String,
	?taxExempt:Bool,
}

private typedef CloneTransactionOptions =
{
	amount:String,
	options: {
		submitForSettlement:Bool
	}
}