# mattermost_api_plus.model.MmSlackAttachmentField

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


MmSlackAttachmentField example = await client.slackAttachmentField.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** |  | [optional] 
**value** | **String** | The value of the attachment, set as string but capable with golang interface | [optional] 
**short** | **bool** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


