# mattermost_api.model.MMNotice

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// TODO: Client options
late MattermostApiClient client;

// example client with HTTP Bearer authorization and string token:
client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MMHttpBearerAuthentication('YOUR TOKEN'),
);


MMNotice example = await client.notice.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Notice ID | [optional] 
**sysAdminOnly** | **bool** | Does this notice apply only to sysadmins | [optional] 
**teamAdminOnly** | **bool** | Does this notice apply only to team admins | [optional] 
**action** | **String** | Optional action to perform on action button click. (defaults to closing the notice) | [optional] 
**actionParam** | **String** | Optional action parameter.  Example: {\"action\": \"url\", actionParam: \"/console/some-page\"} | [optional] 
**actionText** | **String** | Optional override for the action button text (defaults to OK) | [optional] 
**description** | **String** | Notice content. Use {{Mattermost}} instead of plain text to support white-labeling. Text supports Markdown. | [optional] 
**image** | **String** | URL of image to display | [optional] 
**title** | **String** | Notice title. Use {{Mattermost}} instead of plain text to support white-labeling. Text supports Markdown. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)

