# mattermost_api_plus.model.MmSubmitInteractiveDialogRequest

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


MmSubmitInteractiveDialogRequest example = await client.submitInteractiveDialogRequest.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | The URL to send the submitted dialog payload to | 
**channelId** | **String** | Channel ID the user submitted the dialog from | 
**teamId** | **String** | Team ID the user submitted the dialog from | 
**submission** | [**Map**](.md) | String map where keys are element names and values are the element input values | 
**callbackId** | **String** | Callback ID sent when the dialog was opened | [optional] 
**state** | **String** | State sent when the dialog was opened | [optional] 
**cancelled** | **bool** | Set to true if the dialog was cancelled | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


