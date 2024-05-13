# mattermost_api_plus.model.MmUpdateOutgoingWebhookRequest

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


MmUpdateOutgoingWebhookRequest example = await client.updateOutgoingWebhookRequest.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hookId** | **String** | Outgoing webhook GUID | [optional] 
**channelId** | **String** | The ID of a public channel or private group that receives the webhook payloads. | 
**displayName** | **String** | The display name for this incoming webhook | 
**description** | **String** | The description for this incoming webhook | 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


