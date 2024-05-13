# mattermost_api_plus.model.MmUser

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api_plus/api.dart';

// Instantiate your client...
//

// example client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


MmUser example = await client.user.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**createAt** | **int** | The time in milliseconds a user was created | [optional] 
**updateAt** | **int** | The time in milliseconds a user was last updated | [optional] 
**deleteAt** | **int** | The time in milliseconds a user was deleted | [optional] 
**username** | **String** |  | [optional] 
**firstName** | **String** |  | [optional] 
**lastName** | **String** |  | [optional] 
**nickname** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**emailVerified** | **bool** |  | [optional] 
**authService** | **String** |  | [optional] 
**roles** | **String** |  | [optional] 
**locale** | **String** |  | [optional] 
**notifyProps** | [**MmUserNotifyProps**](MmUserNotifyProps.md) |  | [optional] 
**props** | [**Map**](.md) |  | [optional] 
**lastPasswordUpdate** | **int** |  | [optional] 
**lastPictureUpdate** | **int** |  | [optional] 
**failedAttempts** | **int** |  | [optional] 
**mfaActive** | **bool** |  | [optional] 
**timezone** | [**MmTimezone**](MmTimezone.md) |  | [optional] 
**termsOfServiceId** | **String** | ID of accepted terms of service, if any. This field is not present if empty. | [optional] 
**termsOfServiceCreateAt** | **int** | The time in milliseconds the user accepted the terms of service | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


