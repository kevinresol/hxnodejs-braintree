package js.npm.braintree;


extern class Gateway
{
	public var clientToken:ClientTokenGateway;
	public var transaction:TransactionGateway;
	public var paymentMethod:PaymentMethodGateway;
	public var customer:CustomerGateway;
}