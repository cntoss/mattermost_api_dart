# mattermost_api_plus.model.MmCommandResponse

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


MmCommandResponse example = await client.commandResponse.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**responseType** | **String** | The response type either in_channel or ephemeral | [optional] 
**text** | **String** |  | [optional] 
**username** | **String** |  | [optional] 
**iconURL** | **String** |  | [optional] 
**gotoLocation** | **String** |  | [optional] 
**attachments** | [**List<MmSlackAttachment>**](MmSlackAttachment.md) |  | [optional] [default to const []]

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


