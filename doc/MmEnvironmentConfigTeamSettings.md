# mattermost_api_plus.model.MmEnvironmentConfigTeamSettings

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


MmEnvironmentConfigTeamSettings example = await client.environmentConfigTeamSettings.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**siteName** | **bool** |  | [optional] 
**maxUsersPerTeam** | **bool** |  | [optional] 
**enableTeamCreation** | **bool** |  | [optional] 
**enableUserCreation** | **bool** |  | [optional] 
**enableOpenServer** | **bool** |  | [optional] 
**restrictCreationToDomains** | **bool** |  | [optional] 
**enableCustomBrand** | **bool** |  | [optional] 
**customBrandText** | **bool** |  | [optional] 
**customDescriptionText** | **bool** |  | [optional] 
**restrictDirectMessage** | **bool** |  | [optional] 
**restrictTeamInvite** | **bool** |  | [optional] 
**restrictPublicChannelManagement** | **bool** |  | [optional] 
**restrictPrivateChannelManagement** | **bool** |  | [optional] 
**restrictPublicChannelCreation** | **bool** |  | [optional] 
**restrictPrivateChannelCreation** | **bool** |  | [optional] 
**restrictPublicChannelDeletion** | **bool** |  | [optional] 
**restrictPrivateChannelDeletion** | **bool** |  | [optional] 
**userStatusAwayTimeout** | **bool** |  | [optional] 
**maxChannelsPerTeam** | **bool** |  | [optional] 
**maxNotificationsPerChannel** | **bool** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


