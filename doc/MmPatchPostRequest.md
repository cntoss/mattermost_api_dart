# mattermost_api_plus.model.MmPatchPostRequest

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


MmPatchPostRequest example = await client.patchPostRequest.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**isPinned** | **bool** | Set to `true` to pin the post to the channel it is in | [optional] 
**message** | **String** | The message text of the post | [optional] 
**fileIds** | **List<String>** | The list of files attached to this post | [optional] [default to const []]
**hasReactions** | **bool** | Set to `true` if the post has reactions to it | [optional] 
**props** | **String** | A general JSON property bag to attach to the post | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


