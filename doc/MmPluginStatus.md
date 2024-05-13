# mattermost_api_plus.model.MmPluginStatus

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


MmPluginStatus example = await client.pluginStatus.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pluginId** | **String** | Globally unique identifier that represents the plugin. | [optional] 
**name** | **String** | Name of the plugin. | [optional] 
**description** | **String** | Description of what the plugin is and does. | [optional] 
**version** | **String** | Version number of the plugin. | [optional] 
**clusterId** | **String** | ID of the cluster in which plugin is running | [optional] 
**pluginPath** | **String** | Path to the plugin on the server | [optional] 
**state** | **String** | State of the plugin | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


