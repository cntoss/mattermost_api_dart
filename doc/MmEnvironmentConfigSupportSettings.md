# mattermost_api_plus.model.MmEnvironmentConfigSupportSettings

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


MmEnvironmentConfigSupportSettings example = await client.environmentConfigSupportSettings.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**termsOfServiceLink** | **bool** |  | [optional] 
**privacyPolicyLink** | **bool** |  | [optional] 
**aboutLink** | **bool** |  | [optional] 
**helpLink** | **bool** |  | [optional] 
**reportAProblemLink** | **bool** |  | [optional] 
**supportEmail** | **bool** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


