# mattermost_api_plus.model.MmEnvironmentConfigEmailSettings

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


MmEnvironmentConfigEmailSettings example = await client.environmentConfigEmailSettings.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enableSignUpWithEmail** | **bool** |  | [optional] 
**enableSignInWithEmail** | **bool** |  | [optional] 
**enableSignInWithUsername** | **bool** |  | [optional] 
**sendEmailNotifications** | **bool** |  | [optional] 
**requireEmailVerification** | **bool** |  | [optional] 
**feedbackName** | **bool** |  | [optional] 
**feedbackEmail** | **bool** |  | [optional] 
**feedbackOrganization** | **bool** |  | [optional] 
**sMTPUsername** | **bool** |  | [optional] 
**sMTPPassword** | **bool** |  | [optional] 
**sMTPServer** | **bool** |  | [optional] 
**sMTPPort** | **bool** |  | [optional] 
**connectionSecurity** | **bool** |  | [optional] 
**inviteSalt** | **bool** |  | [optional] 
**passwordResetSalt** | **bool** |  | [optional] 
**sendPushNotifications** | **bool** |  | [optional] 
**pushNotificationServer** | **bool** |  | [optional] 
**pushNotificationContents** | **bool** |  | [optional] 
**enableEmailBatching** | **bool** |  | [optional] 
**emailBatchingBufferSize** | **bool** |  | [optional] 
**emailBatchingInterval** | **bool** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


