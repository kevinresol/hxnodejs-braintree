package js.npm.braintree;

extern class Environment implements npm.Package.RequireNamespace<"braintree","^1.37.0">
{
	public static var Sandbox:Environment;
	public static var Production:Environment;
}