# mattermost_api_plus.model.MmChannelUnreadAt

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


MmChannelUnreadAt example = await client.channelUnreadAt.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**teamId** | **String** | The ID of the team the channel belongs to. | [optional] 
**channelId** | **String** | The ID of the channel the user has access to.. | [optional] 
**msgCount** | **int** | No. of messages the user has already read. | [optional] 
**mentionCount** | **int** | No. of mentions the user has within the unread posts of the channel. | [optional] 
**lastViewedAt** | **int** | time in milliseconds when the user last viewed the channel. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


