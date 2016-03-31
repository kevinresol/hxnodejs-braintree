package js.npm.braintree;

import js.support.Callback;
import js.npm.braintree.Types;
import js.npm.braintree.options.*;

extern class CustomerGateway
{
	public function create(options:CreateOptions, cb:Callback<CustomerResult>):Void;
	public function find(id:String, cb:Callback<Customer>):Void;
	public function delete(id:String, cb:Callback0):Void;
	public function search(searcher:Dynamic->Bool, cb:Callback<Dynamic>):Void;
	public function update(id:String, options:CreateOptions, cb:Callback<CustomerResult>):Void;
}

private typedef CreateOptions = 
{
	> CustomerOption,
	
	?creditCard: {
		?billingAddress:AddressOption,
		?cardholderName:String,
		?options: {
			?failOnDuplicatePaymentMethod:Bool,
			?makeDefault:Bool,
			?verificationMerchantAccountId:String,
			?verifyCard:Bool,
		},
		?token:String,
	},
	?customFields:{},
	?deviceData:String,
	?paymentMethodNonce:String,
}