# mattermost_api_plus.api.MattermostCloudApi

## Load the API package
```dart
import 'package:mattermost_api_plus/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**confirmCustomerPayment**](MattermostCloudApi.md#confirmcustomerpayment) | **POST** /cloud/payment/confirm | Completes the payment setup intent
[**createCustomerPayment**](MattermostCloudApi.md#createcustomerpayment) | **POST** /cloud/payment | Create a customer setup payment intent
[**getCloudCustomer**](MattermostCloudApi.md#getcloudcustomer) | **GET** /cloud/customer | Get cloud customer
[**getCloudLimits**](MattermostCloudApi.md#getcloudlimits) | **GET** /cloud/limits | Get cloud workspace limits
[**getCloudProducts**](MattermostCloudApi.md#getcloudproducts) | **GET** /cloud/products | Get cloud products
[**getInvoiceForSubscriptionAsPdf**](MattermostCloudApi.md#getinvoiceforsubscriptionaspdf) | **GET** /cloud/subscription/invoices/{invoice_id}/pdf | Get cloud invoice PDF
[**getInvoicesForSubscription**](MattermostCloudApi.md#getinvoicesforsubscription) | **GET** /cloud/subscription/invoices | Get cloud subscription invoices
[**getSubscription**](MattermostCloudApi.md#getsubscription) | **GET** /cloud/subscription | Get cloud subscription
[**getSubscriptionStats**](MattermostCloudApi.md#getsubscriptionstats) | **GET** /cloud/subscription/stats | GET endpoint for cloud subscription stats
[**postEndpointForCwsWebhooks**](MattermostCloudApi.md#postendpointforcwswebhooks) | **POST** /cloud/webhook | POST endpoint for CWS Webhooks
[**sendAdminUpgradeRequestEmail**](MattermostCloudApi.md#sendadminupgraderequestemail) | **POST** /cloud/subscription/limitreached/invite | POST endpoint for triggering sending emails to admin with request to upgrade workspace
[**sendAdminUpgradeRequestEmailOnJoin**](MattermostCloudApi.md#sendadminupgraderequestemailonjoin) | **POST** /cloud/subscription/limitreached/join | POST endpoint for triggering sending emails to admin with request to upgrade workspace
[**updateCloudCustomer**](MattermostCloudApi.md#updatecloudcustomer) | **PUT** /cloud/customer | Update cloud customer
[**updateCloudCustomerAddress**](MattermostCloudApi.md#updatecloudcustomeraddress) | **PUT** /cloud/customer/address | Update cloud customer address


# **confirmCustomerPayment**
> confirmCustomerPayment(stripeSetupIntentId)

Completes the payment setup intent

Confirms the payment setup intent initiated when posting to `/cloud/payment`. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api_plus/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String stripeSetupIntentId = 'stripeSetupIntentId_example'; // String | 

try {
  await client.cloud.confirmCustomerPayment(stripeSetupIntentId); 
} catch (e) {
  print('Exception when calling MattermostCloudApi->confirmCustomerPayment: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stripeSetupIntentId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **createCustomerPayment**
> MmPaymentSetupIntent createCustomerPayment()

Create a customer setup payment intent

Creates a customer setup payment intent for the given Mattermost cloud installation.  ##### Permissions  Must have `manage_system` permission and be licensed for Cloud.  __Minimum server version__: 5.28 __Note:__: This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api_plus/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MmPaymentSetupIntent? result = await client.cloud.createCustomerPayment(); // await the Future<MmPaymentSetupIntent?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostCloudApi->createCustomerPayment: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MmPaymentSetupIntent**](MmPaymentSetupIntent.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getCloudCustomer**
> MmCloudCustomer getCloudCustomer()

Get cloud customer

Retrieves the customer information for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api_plus/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MmCloudCustomer? result = await client.cloud.getCloudCustomer(); // await the Future<MmCloudCustomer?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostCloudApi->getCloudCustomer: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MmCloudCustomer**](MmCloudCustomer.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getCloudLimits**
> MmProductLimits getCloudLimits()

Get cloud workspace limits

Retrieve any cloud workspace limits applicable to this instance. ##### Permissions Must be authenticated and be licensed for Cloud. __Minimum server version__: 7.0 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api_plus/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MmProductLimits? result = await client.cloud.getCloudLimits(); // await the Future<MmProductLimits?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostCloudApi->getCloudLimits: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MmProductLimits**](MmProductLimits.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getCloudProducts**
> List<MmProduct> getCloudProducts()

Get cloud products

Retrieve a list of all products that are offered for Mattermost Cloud. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api_plus/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final List&lt;MmProduct&gt;? result = await client.cloud.getCloudProducts(); // await the Future<List&lt;MmProduct&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostCloudApi->getCloudProducts: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<MmProduct>**](MmProduct.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getInvoiceForSubscriptionAsPdf**
> getInvoiceForSubscriptionAsPdf(invoiceId)

Get cloud invoice PDF

Retrieves the PDF for the invoice passed as parameter ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.30 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api_plus/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String invoiceId = 'invoiceId_example'; // String | Invoice ID

try {
  await client.cloud.getInvoiceForSubscriptionAsPdf(invoiceId); 
} catch (e) {
  print('Exception when calling MattermostCloudApi->getInvoiceForSubscriptionAsPdf: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceId** | **String**| Invoice ID | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getInvoicesForSubscription**
> List<MmInvoice> getInvoicesForSubscription()

Get cloud subscription invoices

Retrieves the invoices for the subscription bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.30 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api_plus/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final List&lt;MmInvoice&gt;? result = await client.cloud.getInvoicesForSubscription(); // await the Future<List&lt;MmInvoice&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostCloudApi->getInvoicesForSubscription: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<MmInvoice>**](MmInvoice.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getSubscription**
> MmSubscription getSubscription()

Get cloud subscription

Retrieves the subscription information for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.28 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api_plus/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MmSubscription? result = await client.cloud.getSubscription(); // await the Future<MmSubscription?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostCloudApi->getSubscription: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MmSubscription**](MmSubscription.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getSubscriptionStats**
> MmSubscriptionStats getSubscriptionStats()

GET endpoint for cloud subscription stats

An endpoint that returns stats about a user's subscription. For example remaining seats on a free tier ##### Permissions This endpoint should only be accessed in a Mattermost Cloud instance __Minimum server version__: 5.34 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api_plus/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  final MmSubscriptionStats? result = await client.cloud.getSubscriptionStats(); // await the Future<MmSubscriptionStats?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostCloudApi->getSubscriptionStats: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MmSubscriptionStats**](MmSubscriptionStats.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **postEndpointForCwsWebhooks**
> postEndpointForCwsWebhooks()

POST endpoint for CWS Webhooks

An endpoint for processing webhooks from the Customer Portal ##### Permissions This endpoint should only be accessed by CWS, in a Mattermost Cloud instance __Minimum server version__: 5.30 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api_plus/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  await client.cloud.postEndpointForCwsWebhooks(); 
} catch (e) {
  print('Exception when calling MattermostCloudApi->postEndpointForCwsWebhooks: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **sendAdminUpgradeRequestEmail**
> sendAdminUpgradeRequestEmail()

POST endpoint for triggering sending emails to admin with request to upgrade workspace

An endpoint that triggers sending emails to all sys admins to request them to upgrade the workspace when a user tries to invite more users ##### Permissions This endpoint should only be accessed in a Mattermost Cloud instance __Minimum server version__: 5.34 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api_plus/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  await client.cloud.sendAdminUpgradeRequestEmail(); 
} catch (e) {
  print('Exception when calling MattermostCloudApi->sendAdminUpgradeRequestEmail: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **sendAdminUpgradeRequestEmailOnJoin**
> sendAdminUpgradeRequestEmailOnJoin()

POST endpoint for triggering sending emails to admin with request to upgrade workspace

An endpoint that triggers sending emails to all sys admins to request them to upgrade the workspace when a user tries to join the workspace ##### Permissions This endpoint should only be accessed in a Mattermost Cloud instance __Minimum server version__: 5.34 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api_plus/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);



try {
  await client.cloud.sendAdminUpgradeRequestEmailOnJoin(); 
} catch (e) {
  print('Exception when calling MattermostCloudApi->sendAdminUpgradeRequestEmailOnJoin: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateCloudCustomer**
> MmCloudCustomer updateCloudCustomer(mmUpdateCloudCustomerRequest)

Update cloud customer

Updates the customer information for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.29 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api_plus/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final MmUpdateCloudCustomerRequest mmUpdateCloudCustomerRequest = MmUpdateCloudCustomerRequest(); // MmUpdateCloudCustomerRequest | Customer patch including information to update

try {
  final MmCloudCustomer? result = await client.cloud.updateCloudCustomer(mmUpdateCloudCustomerRequest); // await the Future<MmCloudCustomer?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostCloudApi->updateCloudCustomer: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmUpdateCloudCustomerRequest** | [**MmUpdateCloudCustomerRequest**](MmUpdateCloudCustomerRequest.md)| Customer patch including information to update | 

### Return type

[**MmCloudCustomer**](MmCloudCustomer.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateCloudCustomerAddress**
> MmCloudCustomer updateCloudCustomerAddress(mmAddress)

Update cloud customer address

Updates the company address for the Mattermost Cloud customer bound to this installation. ##### Permissions Must have `manage_system` permission and be licensed for Cloud. __Minimum server version__: 5.29 __Note:__ This is intended for internal use and is subject to change. 

### Example
```dart
import 'package:mattermost_api_plus/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final MmAddress mmAddress = MmAddress(); // MmAddress | Company address information to update

try {
  final MmCloudCustomer? result = await client.cloud.updateCloudCustomerAddress(mmAddress); // await the Future<MmCloudCustomer?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostCloudApi->updateCloudCustomerAddress: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmAddress** | [**MmAddress**](MmAddress.md)| Company address information to update | 

### Return type

[**MmCloudCustomer**](MmCloudCustomer.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

