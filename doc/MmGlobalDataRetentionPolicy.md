# mattermost_api_plus.model.MmGlobalDataRetentionPolicy

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


MmGlobalDataRetentionPolicy example = await client.globalDataRetentionPolicy.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageDeletionEnabled** | **bool** | Indicates whether data retention policy deletion of messages is enabled globally. | [optional] 
**fileDeletionEnabled** | **bool** | Indicates whether data retention policy deletion of file attachments is enabled globally. | [optional] 
**messageRetentionCutoff** | **int** | The current server timestamp before which messages should be deleted. | [optional] 
**fileRetentionCutoff** | **int** | The current server timestamp before which files should be deleted. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


