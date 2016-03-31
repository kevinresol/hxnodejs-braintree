# hxnodejs-braintree
Externs for the braintree NPM module https://www.npmjs.com/package/braintree

# Usage

```haxe
import js.npm.Braintree;
import js.npm.braintree.*;

var gateway = Braintree.connect({
  environment: Environment.Sandbox,
  merchantId: 'your_merchant_id',
  publicKey: 'your_public_key',
  privateKey: 'your_private_key'
});
 
gateway.transaction.sale(...);
```
