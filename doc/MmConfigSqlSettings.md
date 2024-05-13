# mattermost_api_plus.model.MmConfigSqlSettings

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


MmConfigSqlSettings example = await client.configSqlSettings.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**driverName** | **String** |  | [optional] 
**dataSource** | **String** |  | [optional] 
**dataSourceReplicas** | **List<String>** |  | [optional] [default to const []]
**maxIdleConns** | **int** |  | [optional] 
**maxOpenConns** | **int** |  | [optional] 
**trace** | **bool** |  | [optional] 
**atRestEncryptKey** | **String** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


