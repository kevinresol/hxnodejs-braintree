package js.npm;

import js.npm.braintree.*;

extern class Braintree implements npm.Package.Require<"braintree","^1.37.0">
{
	public static function connect(options:ConnectOptions):Gateway;
}

typedef ConnectOptions = 
{
	environment: Environment,
	merchantId: String,
	publicKey: String,
	privateKey: String,
}