package js.npm.braintree;

import js.support.Callback;
import js.npm.braintree.Types;
import js.npm.braintree.options.*;

extern class PaymentMethodGateway
{
	public function create(options:CreateOptions, cb:Callback<PaymentMethodResult>):Void;
	public function delete(token:String, cb:Callback0):Void;
	public function find(token:String, cb:Callback<PaymentMethod>):Void;
	public function update(token:String, options:CreateOptions, cb:Callback<PaymentMethodResult>):Void;
}

private typedef CreateOptions =
{
	?billingAddress:AddressOption,
	?billingAddressId:String,
	?cardholderName:String,
	customerId:String,
	?deviceData:String,
	?options:{
		?failOnDuplicatePaymentMethod:Bool,
		?makeDefault:Bool,
		?verificationAmount:Int,
		?verificationMerchantAccountId:String,
		?verifyCard:Bool,
	},
	paymentMethodNonce:String,
	?token:String,
}