# mattermost_api_plus.model.MmGroup

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


MmGroup example = await client.group.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**displayName** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**source_** | **String** |  | [optional] 
**remoteId** | **String** |  | [optional] 
**createAt** | **int** |  | [optional] 
**updateAt** | **int** |  | [optional] 
**deleteAt** | **int** |  | [optional] 
**hasSyncables** | **bool** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


