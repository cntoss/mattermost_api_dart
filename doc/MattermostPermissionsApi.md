# mattermost_api_plus.api.MattermostPermissionsApi

## Load the API package
```dart
import 'package:mattermost_api_plus/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAncillaryPermissions**](MattermostPermissionsApi.md#getancillarypermissions) | **GET** /permissions/ancillary | Return all system console subsection ancillary permissions


# **getAncillaryPermissions**
> List<String> getAncillaryPermissions(subsectionPermissions)

Return all system console subsection ancillary permissions

Returns all the ancillary permissions for the corresponding system console subsection permissions appended to the requested permission subsections.  __Minimum server version__: 5.35 

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


final String subsectionPermissions = 'subsectionPermissions_example'; // String | The subsection permissions to return the ancillary permissions for. These values are comma seperated. Ex. subsection_permissions=sysconsole_read_reporting_site_statistics,sysconsole_write_reporting_site_statistics,sysconsole_write_user_management_channels 

try {
  final List&lt;String&gt;? result = await client.permissions.getAncillaryPermissions(subsectionPermissions); // await the Future<List&lt;String&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostPermissionsApi->getAncillaryPermissions: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subsectionPermissions** | **String**| The subsection permissions to return the ancillary permissions for. These values are comma seperated. Ex. subsection_permissions=sysconsole_read_reporting_site_statistics,sysconsole_write_reporting_site_statistics,sysconsole_write_user_management_channels  | [optional] 

### Return type

**List<String>**

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

