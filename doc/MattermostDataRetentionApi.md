# mattermost_api_plus.api.MattermostDataRetentionApi

## Load the API package
```dart
import 'package:mattermost_api_plus/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addChannelsToRetentionPolicy**](MattermostDataRetentionApi.md#addchannelstoretentionpolicy) | **POST** /data_retention/policies/{policy_id}/channels | Add channels to a granular data retention policy
[**addTeamsToRetentionPolicy**](MattermostDataRetentionApi.md#addteamstoretentionpolicy) | **POST** /data_retention/policies/{policy_id}/teams | Add teams to a granular data retention policy
[**createDataRetentionPolicy**](MattermostDataRetentionApi.md#createdataretentionpolicy) | **POST** /data_retention/policies | Create a new granular data retention policy
[**deleteDataRetentionPolicy**](MattermostDataRetentionApi.md#deletedataretentionpolicy) | **DELETE** /data_retention/policies/{policy_id} | Delete a granular data retention policy
[**getChannelPoliciesForUser**](MattermostDataRetentionApi.md#getchannelpoliciesforuser) | **GET** /users/{user_id}/data_retention/channel_policies | Get the policies which are applied to a user's channels
[**getChannelsForRetentionPolicy**](MattermostDataRetentionApi.md#getchannelsforretentionpolicy) | **GET** /data_retention/policies/{policy_id}/channels | Get the channels for a granular data retention policy
[**getDataRetentionPolicies**](MattermostDataRetentionApi.md#getdataretentionpolicies) | **GET** /data_retention/policies | Get the granular data retention policies
[**getDataRetentionPoliciesCount**](MattermostDataRetentionApi.md#getdataretentionpoliciescount) | **GET** /data_retention/policies_count | Get the number of granular data retention policies
[**getDataRetentionPolicy**](MattermostDataRetentionApi.md#getdataretentionpolicy) | **GET** /data_retention/policy | Get the global data retention policy
[**getDataRetentionPolicyByID**](MattermostDataRetentionApi.md#getdataretentionpolicybyid) | **GET** /data_retention/policies/{policy_id} | Get a granular data retention policy
[**getTeamPoliciesForUser**](MattermostDataRetentionApi.md#getteampoliciesforuser) | **GET** /users/{user_id}/data_retention/team_policies | Get the policies which are applied to a user's teams
[**getTeamsForRetentionPolicy**](MattermostDataRetentionApi.md#getteamsforretentionpolicy) | **GET** /data_retention/policies/{policy_id}/teams | Get the teams for a granular data retention policy
[**patchDataRetentionPolicy**](MattermostDataRetentionApi.md#patchdataretentionpolicy) | **PATCH** /data_retention/policies/{policy_id} | Patch a granular data retention policy
[**removeChannelsFromRetentionPolicy**](MattermostDataRetentionApi.md#removechannelsfromretentionpolicy) | **DELETE** /data_retention/policies/{policy_id}/channels | Delete channels from a granular data retention policy
[**removeTeamsFromRetentionPolicy**](MattermostDataRetentionApi.md#removeteamsfromretentionpolicy) | **DELETE** /data_retention/policies/{policy_id}/teams | Delete teams from a granular data retention policy
[**searchChannelsForRetentionPolicy**](MattermostDataRetentionApi.md#searchchannelsforretentionpolicy) | **POST** /data_retention/policies/{policy_id}/channels/search | Search for the channels in a granular data retention policy
[**searchTeamsForRetentionPolicy**](MattermostDataRetentionApi.md#searchteamsforretentionpolicy) | **POST** /data_retention/policies/{policy_id}/teams/search | Search for the teams in a granular data retention policy


# **addChannelsToRetentionPolicy**
> MmStatusOK addChannelsToRetentionPolicy(policyId, requestBody)

Add channels to a granular data retention policy

Adds channels to a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

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


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.
final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | 

try {
  final MmStatusOK? result = await client.dataRetention.addChannelsToRetentionPolicy(policyId, requestBody); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->addChannelsToRetentionPolicy: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **addTeamsToRetentionPolicy**
> MmStatusOK addTeamsToRetentionPolicy(policyId, requestBody)

Add teams to a granular data retention policy

Adds teams to a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

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


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.
final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | 

try {
  final MmStatusOK? result = await client.dataRetention.addTeamsToRetentionPolicy(policyId, requestBody); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->addTeamsToRetentionPolicy: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **createDataRetentionPolicy**
> MmDataRetentionPolicyWithTeamAndChannelCounts createDataRetentionPolicy(mmDataRetentionPolicyCreate)

Create a new granular data retention policy

Creates a new granular data retention policy with the specified display name and post duration.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

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


final MmDataRetentionPolicyCreate mmDataRetentionPolicyCreate = MmDataRetentionPolicyCreate(); // MmDataRetentionPolicyCreate | 

try {
  final MmDataRetentionPolicyWithTeamAndChannelCounts? result = await client.dataRetention.createDataRetentionPolicy(mmDataRetentionPolicyCreate); // await the Future<MmDataRetentionPolicyWithTeamAndChannelCounts?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->createDataRetentionPolicy: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmDataRetentionPolicyCreate** | [**MmDataRetentionPolicyCreate**](MmDataRetentionPolicyCreate.md)|  | 

### Return type

[**MmDataRetentionPolicyWithTeamAndChannelCounts**](MmDataRetentionPolicyWithTeamAndChannelCounts.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **deleteDataRetentionPolicy**
> MmStatusOK deleteDataRetentionPolicy(policyId)

Delete a granular data retention policy

Deletes a granular data retention policy.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

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


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.

try {
  final MmStatusOK? result = await client.dataRetention.deleteDataRetentionPolicy(policyId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->deleteDataRetentionPolicy: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getChannelPoliciesForUser**
> MmRetentionPolicyForChannelList getChannelPoliciesForUser(userId, page, perPage)

Get the policies which are applied to a user's channels

Gets the policies which are applied to the all of the channels to which a user belongs.  __Minimum server version__: 5.35  ##### Permissions Must be logged in as the user or have the `manage_system` permission.  ##### License Requires an E20 license. 

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


final String userId = 'userId_example'; // String | The ID of the user. This can also be \"me\" which will point to the current user.
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of policies per page. There is a maximum limit of 200 per page.

try {
  final MmRetentionPolicyForChannelList? result = await client.dataRetention.getChannelPoliciesForUser(userId, page, perPage); // await the Future<MmRetentionPolicyForChannelList?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->getChannelPoliciesForUser: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user. This can also be \"me\" which will point to the current user. | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of policies per page. There is a maximum limit of 200 per page. | [optional] [default to 60]

### Return type

[**MmRetentionPolicyForChannelList**](MmRetentionPolicyForChannelList.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getChannelsForRetentionPolicy**
> List<MmChannelWithTeamData> getChannelsForRetentionPolicy(policyId, page, perPage)

Get the channels for a granular data retention policy

Gets the channels to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

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


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of channels per page. There is a maximum limit of 200 per page.

try {
  final List&lt;MmChannelWithTeamData&gt;? result = await client.dataRetention.getChannelsForRetentionPolicy(policyId, page, perPage); // await the Future<List&lt;MmChannelWithTeamData&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->getChannelsForRetentionPolicy: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of channels per page. There is a maximum limit of 200 per page. | [optional] [default to 60]

### Return type

[**List<MmChannelWithTeamData>**](MmChannelWithTeamData.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getDataRetentionPolicies**
> List<MmDataRetentionPolicyWithTeamAndChannelCounts> getDataRetentionPolicies(page, perPage)

Get the granular data retention policies

Gets details about the granular (i.e. team or channel-specific) data retention policies from the server.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

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


final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of policies per page. There is a maximum limit of 200 per page.

try {
  final List&lt;MmDataRetentionPolicyWithTeamAndChannelCounts&gt;? result = await client.dataRetention.getDataRetentionPolicies(page, perPage); // await the Future<List&lt;MmDataRetentionPolicyWithTeamAndChannelCounts&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->getDataRetentionPolicies: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of policies per page. There is a maximum limit of 200 per page. | [optional] [default to 60]

### Return type

[**List<MmDataRetentionPolicyWithTeamAndChannelCounts>**](MmDataRetentionPolicyWithTeamAndChannelCounts.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getDataRetentionPoliciesCount**
> MmGetDataRetentionPoliciesCount200Response getDataRetentionPoliciesCount()

Get the number of granular data retention policies

Gets the number of granular (i.e. team or channel-specific) data retention policies from the server.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

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



try {
  final MmGetDataRetentionPoliciesCount200Response? result = await client.dataRetention.getDataRetentionPoliciesCount(); // await the Future<MmGetDataRetentionPoliciesCount200Response?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->getDataRetentionPoliciesCount: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MmGetDataRetentionPoliciesCount200Response**](MmGetDataRetentionPoliciesCount200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getDataRetentionPolicy**
> MmGlobalDataRetentionPolicy getDataRetentionPolicy()

Get the global data retention policy

Gets the current global data retention policy details from the server, including what data should be purged and the cutoff times for each data type that should be purged.  __Minimum server version__: 4.3  ##### Permissions Requires an active session but no other permissions.  ##### License Requires an E20 license. 

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



try {
  final MmGlobalDataRetentionPolicy? result = await client.dataRetention.getDataRetentionPolicy(); // await the Future<MmGlobalDataRetentionPolicy?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->getDataRetentionPolicy: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MmGlobalDataRetentionPolicy**](MmGlobalDataRetentionPolicy.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getDataRetentionPolicyByID**
> MmDataRetentionPolicyWithTeamAndChannelCounts getDataRetentionPolicyByID(policyId)

Get a granular data retention policy

Gets details about a granular data retention policies by ID.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

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


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.

try {
  final MmDataRetentionPolicyWithTeamAndChannelCounts? result = await client.dataRetention.getDataRetentionPolicyByID(policyId); // await the Future<MmDataRetentionPolicyWithTeamAndChannelCounts?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->getDataRetentionPolicyByID: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 

### Return type

[**MmDataRetentionPolicyWithTeamAndChannelCounts**](MmDataRetentionPolicyWithTeamAndChannelCounts.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTeamPoliciesForUser**
> MmRetentionPolicyForTeamList getTeamPoliciesForUser(userId, page, perPage)

Get the policies which are applied to a user's teams

Gets the policies which are applied to the all of the teams to which a user belongs.  __Minimum server version__: 5.35  ##### Permissions Must be logged in as the user or have the `manage_system` permission.  ##### License Requires an E20 license. 

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


final String userId = 'userId_example'; // String | The ID of the user. This can also be \"me\" which will point to the current user.
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of policies per page. There is a maximum limit of 200 per page.

try {
  final MmRetentionPolicyForTeamList? result = await client.dataRetention.getTeamPoliciesForUser(userId, page, perPage); // await the Future<MmRetentionPolicyForTeamList?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->getTeamPoliciesForUser: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user. This can also be \"me\" which will point to the current user. | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of policies per page. There is a maximum limit of 200 per page. | [optional] [default to 60]

### Return type

[**MmRetentionPolicyForTeamList**](MmRetentionPolicyForTeamList.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTeamsForRetentionPolicy**
> List<MmTeam> getTeamsForRetentionPolicy(policyId, page, perPage)

Get the teams for a granular data retention policy

Gets the teams to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

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


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of teams per page. There is a maximum limit of 200 per page.

try {
  final List&lt;MmTeam&gt;? result = await client.dataRetention.getTeamsForRetentionPolicy(policyId, page, perPage); // await the Future<List&lt;MmTeam&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->getTeamsForRetentionPolicy: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of teams per page. There is a maximum limit of 200 per page. | [optional] [default to 60]

### Return type

[**List<MmTeam>**](MmTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **patchDataRetentionPolicy**
> MmDataRetentionPolicyWithTeamAndChannelCounts patchDataRetentionPolicy(policyId, mmDataRetentionPolicyWithTeamAndChannelIds)

Patch a granular data retention policy

Patches (i.e. replaces the fields of) a granular data retention policy. If any fields are omitted, they will not be changed.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

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


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.
final MmDataRetentionPolicyWithTeamAndChannelIds mmDataRetentionPolicyWithTeamAndChannelIds = MmDataRetentionPolicyWithTeamAndChannelIds(); // MmDataRetentionPolicyWithTeamAndChannelIds | 

try {
  final MmDataRetentionPolicyWithTeamAndChannelCounts? result = await client.dataRetention.patchDataRetentionPolicy(policyId, mmDataRetentionPolicyWithTeamAndChannelIds); // await the Future<MmDataRetentionPolicyWithTeamAndChannelCounts?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->patchDataRetentionPolicy: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **mmDataRetentionPolicyWithTeamAndChannelIds** | [**MmDataRetentionPolicyWithTeamAndChannelIds**](MmDataRetentionPolicyWithTeamAndChannelIds.md)|  | 

### Return type

[**MmDataRetentionPolicyWithTeamAndChannelCounts**](MmDataRetentionPolicyWithTeamAndChannelCounts.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **removeChannelsFromRetentionPolicy**
> MmStatusOK removeChannelsFromRetentionPolicy(policyId, requestBody)

Delete channels from a granular data retention policy

Delete channels from a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

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


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.
final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | 

try {
  final MmStatusOK? result = await client.dataRetention.removeChannelsFromRetentionPolicy(policyId, requestBody); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->removeChannelsFromRetentionPolicy: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **removeTeamsFromRetentionPolicy**
> MmStatusOK removeTeamsFromRetentionPolicy(policyId, requestBody)

Delete teams from a granular data retention policy

Delete teams from a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

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


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.
final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | 

try {
  final MmStatusOK? result = await client.dataRetention.removeTeamsFromRetentionPolicy(policyId, requestBody); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->removeTeamsFromRetentionPolicy: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **searchChannelsForRetentionPolicy**
> List<MmChannelWithTeamData> searchChannelsForRetentionPolicy(policyId, mmSearchChannelsForRetentionPolicyRequest)

Search for the channels in a granular data retention policy

Searches for the channels to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

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


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.
final MmSearchChannelsForRetentionPolicyRequest mmSearchChannelsForRetentionPolicyRequest = MmSearchChannelsForRetentionPolicyRequest(); // MmSearchChannelsForRetentionPolicyRequest | 

try {
  final List&lt;MmChannelWithTeamData&gt;? result = await client.dataRetention.searchChannelsForRetentionPolicy(policyId, mmSearchChannelsForRetentionPolicyRequest); // await the Future<List&lt;MmChannelWithTeamData&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->searchChannelsForRetentionPolicy: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **mmSearchChannelsForRetentionPolicyRequest** | [**MmSearchChannelsForRetentionPolicyRequest**](MmSearchChannelsForRetentionPolicyRequest.md)|  | 

### Return type

[**List<MmChannelWithTeamData>**](MmChannelWithTeamData.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **searchTeamsForRetentionPolicy**
> List<MmTeam> searchTeamsForRetentionPolicy(policyId, mmSearchTeamsForRetentionPolicyRequest)

Search for the teams in a granular data retention policy

Searches for the teams to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

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


final String policyId = 'policyId_example'; // String | The ID of the granular retention policy.
final MmSearchTeamsForRetentionPolicyRequest mmSearchTeamsForRetentionPolicyRequest = MmSearchTeamsForRetentionPolicyRequest(); // MmSearchTeamsForRetentionPolicyRequest | 

try {
  final List&lt;MmTeam&gt;? result = await client.dataRetention.searchTeamsForRetentionPolicy(policyId, mmSearchTeamsForRetentionPolicyRequest); // await the Future<List&lt;MmTeam&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostDataRetentionApi->searchTeamsForRetentionPolicy: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**| The ID of the granular retention policy. | 
 **mmSearchTeamsForRetentionPolicyRequest** | [**MmSearchTeamsForRetentionPolicyRequest**](MmSearchTeamsForRetentionPolicyRequest.md)|  | 

### Return type

[**List<MmTeam>**](MmTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

