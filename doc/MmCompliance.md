# mattermost_api_plus.model.MmCompliance

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


MmCompliance example = await client.compliance.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**createAt** | **int** |  | [optional] 
**userId** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**count** | **int** |  | [optional] 
**desc** | **String** |  | [optional] 
**type** | **String** |  | [optional] 
**startAt** | **int** |  | [optional] 
**endAt** | **int** |  | [optional] 
**keywords** | **String** |  | [optional] 
**emails** | **String** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


