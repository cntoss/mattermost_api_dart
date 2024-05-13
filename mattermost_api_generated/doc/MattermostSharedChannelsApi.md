# mattermost_api_plus.api.MattermostSharedChannelsApi

## Load the API package
```dart
import 'package:mattermost_api_plus/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllSharedChannels**](MattermostSharedChannelsApi.md#getallsharedchannels) | **GET** /sharedchannels/{team_id} | Get all shared channels for team.
[**getRemoteClusterInfo**](MattermostSharedChannelsApi.md#getremoteclusterinfo) | **GET** /sharedchannels/remote_info/{remote_id} | Get remote cluster info by ID for user.


# **getAllSharedChannels**
> List<MmSharedChannel> getAllSharedChannels(teamId, page, perPage)

Get all shared channels for team.

Get all shared channels for a team.  __Minimum server version__: 5.50  ##### Permissions Must be authenticated. 

### Example
```dart
import 'package:mattermost_api_plus/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String teamId = 'teamId_example'; // String | Team Id
final int page = 56; // int | 
final int perPage = 56; // int | 

try {
  final List&lt;MmSharedChannel&gt;? result = await client.sharedChannels.getAllSharedChannels(teamId, page, perPage); // await the Future<List&lt;MmSharedChannel&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostSharedChannelsApi->getAllSharedChannels: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team Id | 
 **page** | **int**|  | [optional] [default to 0]
 **perPage** | **int**|  | [optional] [default to 0]

### Return type

[**List<MmSharedChannel>**](MmSharedChannel.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getRemoteClusterInfo**
> MmRemoteClusterInfo getRemoteClusterInfo(remoteId)

Get remote cluster info by ID for user.

Get remote cluster info based on remoteId.  __Minimum server version__: 5.50  ##### Permissions Must be authenticated and user must belong to at least one channel shared with the remote cluster. 

### Example
```dart
import 'package:mattermost_api_plus/api.dart';

// Instantiate your client...
//
// Configure client with HTTP Bearer authorization and string token:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
// );
// Configure client with HTTP Bearer authorization and function returning a string:
// client = MattermostApiClient(
//   basePath: 'https://your-server.tld/api/v4',
//   authentication: MmHttpBearerAuthentication(()=>'ACCESS TOKEN FROM FUNCTION'),
// );

// Configure client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


final String remoteId = 'remoteId_example'; // String | Remote Cluster GUID

try {
  final MmRemoteClusterInfo? result = await client.sharedChannels.getRemoteClusterInfo(remoteId); // await the Future<MmRemoteClusterInfo?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostSharedChannelsApi->getRemoteClusterInfo: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **remoteId** | **String**| Remote Cluster GUID | 

### Return type

[**MmRemoteClusterInfo**](MmRemoteClusterInfo.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

