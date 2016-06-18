package js.npm.braintree;

typedef Result = 
{
	success:Bool,
	?errors:Dynamic,
	?message:String,
	?params:Dynamic,
}

typedef CreditCard = 
{
	billingAddress:Address,
	bin:String,
	cardType:String, // `American Express`, `Carte Blanche`, `China UnionPay`, `Diners Club`, `Discover`, `JCB`, `Laser`, `Maestro`, `MasterCard`, `Solo`, `Switch`, `Visa`, `Unknown`
	cardholderName:String,
	commercial:String, // `CreditCard.Commercial.Yes`,  `CreditCard.Commercial.No`,  `CreditCard.Commercial.Unknown`
	countryOfIssuance:String,
	createdAt:String, // Date
	customerId:String,
	customerLocation:String, // `CreditCardCustomerLocation.International`, `CreditCardCustomerLocation.US`
	debit:String, // `CreditCard.Debit.Yes`, `CreditCard.Debit.No`, `CreditCard.Debit.Unknown`
	// default:Bool
	durbinRegulated:String, // `CreditCard.DurbinRegulated.Yes`, `CreditCard.DurbinRegulated.No`, `CreditCard.DurbinRegulated.Unknown`
	expirationDate:String,
	expirationMonth:String,
	expirationYear:String,
	expired:Bool,
	healthcare:String,  // `CreditCard.HealthCare.Yes`, `CreditCard.HealthCare.No`, `CreditCard.HealthCare.Unknown`
	imageUrl:String, 
	issuingBank:String, 
	last4:String, 
	maskedNumber:String, 
	payroll:String,  // `CreditCard.Payroll.Yes`, `CreditCard.Payroll.No`, `CreditCard.Payroll.Unknown`
	prepaid:String,  // `CreditCard.Prepaid.Yes`, `CreditCard.Prepaid.No`, `CreditCard.Prepaid.Unknown`
	subscriptions:Array<Subscription>,
	token:String, 
	uniqueNumberIdentifier:String, 
	updatedAt:String,  // Date
}


typedef Transaction = 
{
	id:String,
	amount:String,
	currencyIsoCode:String,
	paymentInstrumentType:String, // "credit_card", "paypal_account", "europe_bank_account", "apple_pay_card", "coinbase_account", "venmo_account", "android_pay_card"
	creditCard: {
		cardType:String,
		maskedNumber:String,
	},
}

typedef TransactionResult = 
{
	> Result,
	transaction:Transaction,
}

typedef Customer = 
{
	addresses:Array<Address>,
	androidPayCards:Array<AndroidPayCard>,
	applePayCards:Array<ApplePayCard>,
	company:String,
	createdAt:String, // Date
	creditCards:Array<CreditCard>,
	customFields:{},
	email:String,
	fax:String,
	firstName:String,
	id:String,
	lastName:String,
	paymentMethods:Array<PaymentMethod>,
	paypalAccounts:Array<PaypalAccount>,
	phone:String,
	updatedAt:String, // Date
	website:String,
}


typedef CustomerResult = 
{
	> Result,
	customer:Customer,
}

typedef Address =
{
	company:String,
	countryCodeAlpha2:String,
	countryCodeAlpha3:String,
	countryCodeNumeric:String,
	countryName:String,
	createdAt:String, // Date
	customerId:String,
	extendedAddress:String,
	firstName:String,
	id:String,
	lastName:String,
	locality:String,
	postalCode:String,
	region:String,
	streetAddress:String,
	updatedAt:String,//  Date
}

typedef AndroidPayCard =
{
	bin:String,
	createdAt:String, // Date
	customerId:String,
	// default:Bool,
	expirationMonth:String,
	expirationYear:String,
	googleTransactionId:String,
	imageUrl:String,
	sourceCardLast4:String,
	sourceCardType:String,
	sourceDescription:String,
	subscriptions:Array<Subscription>,
	token:String,
	updatedAt:String, // Date
	virtualCardLast4:String,
	virtualCardType:String,
}

typedef ApplePayCard = 
{
	cardType:String, // `Apple Pay - Visa`, `Apple Pay - MasterCard`, `Apple Pay - American Express`
	createdAt:String, // Date
	customerId:String,
	// default:Bool
	expirationMonth:String,
	expirationYear:String,
	expired:Bool,
	imageUrl:String,
	last4:String,
	paymentInstrumentName:String,
	sourceDescription:String,
	subscriptions:Array<Subscription>,
	token:String,
	updatedAt:String, //Date
}

typedef Subscription =
{
	addOns:Array<AddOn>,
	balance:String,
	billingDayOfMonth:Int,
	billingPeriodEndDate:String,
	billingPeriodStartDate:String,
	createdAt:String, // Date
	currentBillingCycle:Int,
	daysPastDue:Int,
	descriptor:Dynamic,
	name:String,
	phone:String,
	url:String,
	discounts:Array<Discount>,
	failureCount:Int,
	firstBillingDate:String, // Date
	id:String,
	merchantAccountId:String,
	neverExpires:Bool,
	nextBillingDate:String, // Date
	nextBillingPeriodAmount:String,
	numberOfBillingCycles:Int,
	paidThroughDate:String, //Date
	paymentMethodToken:String,
	planId:String,
	price:String,
	status:String, // `braintree.Subscription.Status.Active`, `braintree.Subscription.Status.Canceled`, `braintree.Subscription.Status.Expired`, `braintree.Subscription.Status.PastDue`, `braintree.Subscription.Status.Pending`
	statusHistory:Array<Dynamic>,
	transactions:Array<Transaction>,
	trialDuration:Int,
	trialDurationUnit:String,
	trialPeriod:Bool,
	updatedAt:String, //Date
}

typedef AddOn =
{
	amount:String,
	currentBillingCycle:Int,
	description:String,
	id:String,
	kind:String,
	name:String,
	neverExpires:Bool,
	numberOfBillingCycles:Int,
	quantity:Int,
}

typedef PaymentMethod =
{
	token:String
}
typedef PaymentMethodResult =
{
	> Result,
	paymentMethod:PaymentMethod,
	?androidPayCard:AndroidPayCard,
	?applePayCard:ApplePayCard,
	?creditCard:CreditCard,
	?paypalAccount:PaypalAccount,
}

typedef PaypalAccount =
{
	billingAgreementId:String,
	createdAt:String,// Date
	customerId:String,
	// default:Bool
	email:String,
	imageUrl:String,
	subscriptions:Array<Subscription>,
	token:String,
	updatedAt:String, // Date
}

typedef Discount =
{
	amount:String,
	currentBillingCycle:Int,
	description:String,
	id:String,
	kind:String,
	name:String,
	neverExpires:Bool,
	numberOfBillingCycles:Int,
	quantity:Int,
}