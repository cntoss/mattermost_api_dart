# mattermost_api_plus.model.MmChannelMemberWithTeamDataAllOf

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


MmChannelMemberWithTeamDataAllOf example = await client.channelMemberWithTeamDataAllOf.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**teamDisplayName** | **String** | The display name of the team to which this channel belongs. | [optional] 
**teamName** | **String** | The name of the team to which this channel belongs. | [optional] 
**teamUpdateAt** | **int** | The time at which the team to which this channel belongs was last updated. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


