# mattermost_api.api.MattermostEmojiApi

## Load the API package
```dart
import 'package:mattermost_api/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocompleteEmoji**](MattermostEmojiApi.md#autocompleteemoji) | **GET** /emoji/autocomplete | Autocomplete custom emoji
[**createEmoji**](MattermostEmojiApi.md#createemoji) | **POST** /emoji | Create a custom emoji
[**deleteEmoji**](MattermostEmojiApi.md#deleteemoji) | **DELETE** /emoji/{emoji_id} | Delete a custom emoji
[**getEmoji**](MattermostEmojiApi.md#getemoji) | **GET** /emoji/{emoji_id} | Get a custom emoji
[**getEmojiByName**](MattermostEmojiApi.md#getemojibyname) | **GET** /emoji/name/{emoji_name} | Get a custom emoji by name
[**getEmojiImage**](MattermostEmojiApi.md#getemojiimage) | **GET** /emoji/{emoji_id}/image | Get custom emoji image
[**getEmojiList**](MattermostEmojiApi.md#getemojilist) | **GET** /emoji | Get a list of custom emoji
[**searchEmoji**](MattermostEmojiApi.md#searchemoji) | **POST** /emoji/search | Search custom emoji


# **autocompleteEmoji**
> MattermostEmoji autocompleteEmoji(name)

Autocomplete custom emoji

Get a list of custom emoji with names starting with or matching the provided name. Returns a maximum of 100 results. ##### Permissions Must be authenticated.  __Minimum server version__: 4.7 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostEmojiApi();
final name = name_example; // String | The emoji name to search.

try {
    final result = api_instance.autocompleteEmoji(name);
    print(result);
} catch (e) {
    print('Exception when calling MattermostEmojiApi->autocompleteEmoji: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The emoji name to search. | 

### Return type

[**MattermostEmoji**](MattermostEmoji.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEmoji**
> MattermostEmoji createEmoji(image, emoji)

Create a custom emoji

Create a custom emoji for the team. ##### Permissions Must be authenticated. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostEmojiApi();
final image = BINARY_DATA_HERE; // MultipartFile | A file to be uploaded
final emoji = emoji_example; // String | A JSON object containing a `name` field with the name of the emoji and a `creator_id` field with the id of the authenticated user.

try {
    final result = api_instance.createEmoji(image, emoji);
    print(result);
} catch (e) {
    print('Exception when calling MattermostEmojiApi->createEmoji: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image** | **MultipartFile**| A file to be uploaded | 
 **emoji** | **String**| A JSON object containing a `name` field with the name of the emoji and a `creator_id` field with the id of the authenticated user. | 

### Return type

[**MattermostEmoji**](MattermostEmoji.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEmoji**
> MattermostEmoji deleteEmoji(emojiId)

Delete a custom emoji

Delete a custom emoji. ##### Permissions Must have the `manage_team` or `manage_system` permissions or be the user who created the emoji. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostEmojiApi();
final emojiId = emojiId_example; // String | Emoji GUID

try {
    final result = api_instance.deleteEmoji(emojiId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostEmojiApi->deleteEmoji: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emojiId** | **String**| Emoji GUID | 

### Return type

[**MattermostEmoji**](MattermostEmoji.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmoji**
> MattermostEmoji getEmoji(emojiId)

Get a custom emoji

Get some metadata for a custom emoji. ##### Permissions Must be authenticated. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostEmojiApi();
final emojiId = emojiId_example; // String | Emoji GUID

try {
    final result = api_instance.getEmoji(emojiId);
    print(result);
} catch (e) {
    print('Exception when calling MattermostEmojiApi->getEmoji: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emojiId** | **String**| Emoji GUID | 

### Return type

[**MattermostEmoji**](MattermostEmoji.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmojiByName**
> MattermostEmoji getEmojiByName(emojiName)

Get a custom emoji by name

Get some metadata for a custom emoji using its name. ##### Permissions Must be authenticated.  __Minimum server version__: 4.7 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostEmojiApi();
final emojiName = emojiName_example; // String | Emoji name

try {
    final result = api_instance.getEmojiByName(emojiName);
    print(result);
} catch (e) {
    print('Exception when calling MattermostEmojiApi->getEmojiByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emojiName** | **String**| Emoji name | 

### Return type

[**MattermostEmoji**](MattermostEmoji.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmojiImage**
> getEmojiImage(emojiId)

Get custom emoji image

Get the image for a custom emoji. ##### Permissions Must be authenticated. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostEmojiApi();
final emojiId = emojiId_example; // String | Emoji GUID

try {
    api_instance.getEmojiImage(emojiId);
} catch (e) {
    print('Exception when calling MattermostEmojiApi->getEmojiImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emojiId** | **String**| Emoji GUID | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmojiList**
> MattermostEmoji getEmojiList(page, perPage, sort)

Get a list of custom emoji

Get a page of metadata for custom emoji on the system. Since server version 4.7, sort using the `sort` query parameter. ##### Permissions Must be authenticated. 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostEmojiApi();
final page = 56; // int | The page to select.
final perPage = 56; // int | The number of emojis per page.
final sort = sort_example; // String | Either blank for no sorting or \"name\" to sort by emoji names. Minimum server version for sorting is 4.7.

try {
    final result = api_instance.getEmojiList(page, perPage, sort);
    print(result);
} catch (e) {
    print('Exception when calling MattermostEmojiApi->getEmojiList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of emojis per page. | [optional] [default to 60]
 **sort** | **String**| Either blank for no sorting or \"name\" to sort by emoji names. Minimum server version for sorting is 4.7. | [optional] [default to '']

### Return type

[**MattermostEmoji**](MattermostEmoji.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchEmoji**
> List<MattermostEmoji> searchEmoji(mattermostSearchEmojiRequest)

Search custom emoji

Search for custom emoji by name based on search criteria provided in the request body. A maximum of 200 results are returned. ##### Permissions Must be authenticated.  __Minimum server version__: 4.7 

### Example
```dart
import 'package:mattermost_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultMattermostApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MattermostEmojiApi();
final mattermostSearchEmojiRequest = MattermostSearchEmojiRequest(); // MattermostSearchEmojiRequest | Search criteria

try {
    final result = api_instance.searchEmoji(mattermostSearchEmojiRequest);
    print(result);
} catch (e) {
    print('Exception when calling MattermostEmojiApi->searchEmoji: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mattermostSearchEmojiRequest** | [**MattermostSearchEmojiRequest**](MattermostSearchEmojiRequest.md)| Search criteria | 

### Return type

[**List<MattermostEmoji>**](MattermostEmoji.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
