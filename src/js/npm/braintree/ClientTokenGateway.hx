package js.npm.braintree;

import js.support.*;

extern class ClientTokenGateway
{
	public function generate(options:GenerateOptions, cb:Callback<{clientToken:String}>):Void;
}

private typedef GenerateOptions =
{
	?customerId:String,
	?merchantAccountId:String,
	?options: {
		?failOnDuplicatePaymentMethod:Bool,
		?makeDefault:Bool,
		?verifyCard:Bool,
	},
	?version:String,
}