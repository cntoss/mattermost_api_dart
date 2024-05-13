# mattermost_api_plus.model.MmRetentionPolicyForTeamList

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


MmRetentionPolicyForTeamList example = await client.retentionPolicyForTeamList.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**policies** | [**List<MmDataRetentionPolicyForTeam>**](MmDataRetentionPolicyForTeam.md) | The list of team policies. | [optional] [default to const []]
**totalCount** | **int** | The total number of team policies. | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


