# mattermost_api.model.MmCreatePostEphemeralRequest

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//

// example client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


MmCreatePostEphemeralRequest example = await client.createPostEphemeralRequest.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userId** | **String** | The target user id for the ephemeral post | 
**post** | [**MmCreatePostEphemeralRequestPost**](MmCreatePostEphemeralRequestPost.md) |  | 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)

