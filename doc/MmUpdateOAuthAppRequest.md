# mattermost_api_plus.model.MmUpdateOAuthAppRequest

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


MmUpdateOAuthAppRequest example = await client.updateOAuthAppRequest.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the client application | 
**name** | **String** | The name of the client application | 
**description** | **String** | A short description of the application | 
**iconUrl** | **String** | A URL to an icon to display with the application | [optional] 
**callbackUrls** | **List<String>** | A list of callback URLs for the appliation | [default to const []]
**homepage** | **String** | A link to the website of the application | 
**isTrusted** | **bool** | Set this to `true` to skip asking users for permission. It will be set to false if value is not provided. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


