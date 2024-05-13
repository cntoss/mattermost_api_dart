# mattermost_api_plus.model.MmBot

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


MmBot example = await client.bot.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userId** | **String** | The user id of the associated user entry. | [optional] 
**createAt** | **int** | The time in milliseconds a bot was created | [optional] 
**updateAt** | **int** | The time in milliseconds a bot was last updated | [optional] 
**deleteAt** | **int** | The time in milliseconds a bot was deleted | [optional] 
**username** | **String** |  | [optional] 
**displayName** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**ownerId** | **String** | The user id of the user that currently owns this bot. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


