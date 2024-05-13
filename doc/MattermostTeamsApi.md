# mattermost_api_plus.api.MattermostTeamsApi

## Load the API package
```dart
import 'package:mattermost_api_plus/api.dart';
```

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addTeamMember**](MattermostTeamsApi.md#addteammember) | **POST** /teams/{team_id}/members | Add user to team
[**addTeamMemberFromInvite**](MattermostTeamsApi.md#addteammemberfrominvite) | **POST** /teams/members/invite | Add user to team from invite
[**addTeamMembers**](MattermostTeamsApi.md#addteammembers) | **POST** /teams/{team_id}/members/batch | Add multiple users to team
[**createTeam**](MattermostTeamsApi.md#createteam) | **POST** /teams | Create a team
[**getAllTeams**](MattermostTeamsApi.md#getallteams) | **GET** /teams | Get teams
[**getTeam**](MattermostTeamsApi.md#getteam) | **GET** /teams/{team_id} | Get a team
[**getTeamByName**](MattermostTeamsApi.md#getteambyname) | **GET** /teams/name/{name} | Get a team by name
[**getTeamIcon**](MattermostTeamsApi.md#getteamicon) | **GET** /teams/{team_id}/image | Get the team icon
[**getTeamInviteInfo**](MattermostTeamsApi.md#getteaminviteinfo) | **GET** /teams/invite/{invite_id} | Get invite info for a team
[**getTeamMember**](MattermostTeamsApi.md#getteammember) | **GET** /teams/{team_id}/members/{user_id} | Get a team member
[**getTeamMembers**](MattermostTeamsApi.md#getteammembers) | **GET** /teams/{team_id}/members | Get team members
[**getTeamMembersByIds**](MattermostTeamsApi.md#getteammembersbyids) | **POST** /teams/{team_id}/members/ids | Get team members by ids
[**getTeamMembersForUser**](MattermostTeamsApi.md#getteammembersforuser) | **GET** /users/{user_id}/teams/members | Get team members for a user
[**getTeamStats**](MattermostTeamsApi.md#getteamstats) | **GET** /teams/{team_id}/stats | Get a team stats
[**getTeamUnread**](MattermostTeamsApi.md#getteamunread) | **GET** /users/{user_id}/teams/{team_id}/unread | Get unreads for a team
[**getTeamsForUser**](MattermostTeamsApi.md#getteamsforuser) | **GET** /users/{user_id}/teams | Get a user's teams
[**getTeamsUnreadForUser**](MattermostTeamsApi.md#getteamsunreadforuser) | **GET** /users/{user_id}/teams/unread | Get team unreads for a user
[**importTeam**](MattermostTeamsApi.md#importteam) | **POST** /teams/{team_id}/import | Import a Team from other application
[**invalidateEmailInvites**](MattermostTeamsApi.md#invalidateemailinvites) | **DELETE** /teams/invites/email | Invalidate active email invitations
[**inviteGuestsToTeam**](MattermostTeamsApi.md#invitegueststoteam) | **POST** /teams/{team_id}/invite-guests/email | Invite guests to the team by email
[**inviteUsersToTeam**](MattermostTeamsApi.md#inviteuserstoteam) | **POST** /teams/{team_id}/invite/email | Invite users to the team by email
[**patchTeam**](MattermostTeamsApi.md#patchteam) | **PUT** /teams/{team_id}/patch | Patch a team
[**regenerateTeamInviteId**](MattermostTeamsApi.md#regenerateteaminviteid) | **POST** /teams/{team_id}/regenerate_invite_id | Regenerate the Invite ID from a Team
[**removeTeamIcon**](MattermostTeamsApi.md#removeteamicon) | **DELETE** /teams/{team_id}/image | Remove the team icon
[**removeTeamMember**](MattermostTeamsApi.md#removeteammember) | **DELETE** /teams/{team_id}/members/{user_id} | Remove user from team
[**restoreTeam**](MattermostTeamsApi.md#restoreteam) | **POST** /teams/{team_id}/restore | Restore a team
[**searchFiles**](MattermostTeamsApi.md#searchfiles) | **POST** /teams/{team_id}/files/search | Search files in a team
[**searchTeams**](MattermostTeamsApi.md#searchteams) | **POST** /teams/search | Search teams
[**setTeamIcon**](MattermostTeamsApi.md#setteamicon) | **POST** /teams/{team_id}/image | Sets the team icon
[**softDeleteTeam**](MattermostTeamsApi.md#softdeleteteam) | **DELETE** /teams/{team_id} | Delete a team
[**teamExists**](MattermostTeamsApi.md#teamexists) | **GET** /teams/name/{name}/exists | Check if team exists
[**teamMembersMinusGroupMembers**](MattermostTeamsApi.md#teammembersminusgroupmembers) | **GET** /teams/{team_id}/members_minus_group_members | Team members minus group members.
[**updateTeam**](MattermostTeamsApi.md#updateteam) | **PUT** /teams/{team_id} | Update a team
[**updateTeamMemberRoles**](MattermostTeamsApi.md#updateteammemberroles) | **PUT** /teams/{team_id}/members/{user_id}/roles | Update a team member roles
[**updateTeamMemberSchemeRoles**](MattermostTeamsApi.md#updateteammemberschemeroles) | **PUT** /teams/{team_id}/members/{user_id}/schemeRoles | Update the scheme-derived roles of a team member.
[**updateTeamPrivacy**](MattermostTeamsApi.md#updateteamprivacy) | **PUT** /teams/{team_id}/privacy | Update teams's privacy
[**updateTeamScheme**](MattermostTeamsApi.md#updateteamscheme) | **PUT** /teams/{team_id}/scheme | Set a team's scheme


# **addTeamMember**
> MmTeamMember addTeamMember(teamId, mmAddTeamMemberRequest)

Add user to team

Add user to the team by user_id. ##### Permissions Must be authenticated and team be open to add self. For adding another user, authenticated user must have the `add_user_to_team` permission. 

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


final String teamId = 'teamId_example'; // String | Team GUID
final MmAddTeamMemberRequest mmAddTeamMemberRequest = MmAddTeamMemberRequest(); // MmAddTeamMemberRequest | 

try {
  final MmTeamMember? result = await client.teams.addTeamMember(teamId, mmAddTeamMemberRequest); // await the Future<MmTeamMember?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->addTeamMember: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **mmAddTeamMemberRequest** | [**MmAddTeamMemberRequest**](MmAddTeamMemberRequest.md)|  | 

### Return type

[**MmTeamMember**](MmTeamMember.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **addTeamMemberFromInvite**
> MmTeamMember addTeamMemberFromInvite(token)

Add user to team from invite

Using either an invite id or hash/data pair from an email invite link, add a user to a team. ##### Permissions Must be authenticated. 

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


final String token = 'token_example'; // String | Token id from the invitation

try {
  final MmTeamMember? result = await client.teams.addTeamMemberFromInvite(token); // await the Future<MmTeamMember?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->addTeamMemberFromInvite: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Token id from the invitation | 

### Return type

[**MmTeamMember**](MmTeamMember.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **addTeamMembers**
> List<MmTeamMember> addTeamMembers(teamId, mmTeamMember, graceful)

Add multiple users to team

Add a number of users to the team by user_id. ##### Permissions Must be authenticated. Authenticated user must have the `add_user_to_team` permission. 

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


final String teamId = 'teamId_example'; // String | Team GUID
final List&lt;MmTeamMember&gt; mmTeamMember = [List<MmTeamMember>()]; // List<MmTeamMember> | 
final bool graceful = true; // bool | Instead of aborting the operation if a user cannot be added, return an arrray that will contain both the success and added members and the ones with error, in form of `[{\"member\": {...}, \"user_id\", \"...\", \"error\": {...}}]`

try {
  final List&lt;MmTeamMember&gt;? result = await client.teams.addTeamMembers(teamId, mmTeamMember, graceful); // await the Future<List&lt;MmTeamMember&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->addTeamMembers: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **mmTeamMember** | [**List<MmTeamMember>**](MmTeamMember.md)|  | 
 **graceful** | **bool**| Instead of aborting the operation if a user cannot be added, return an arrray that will contain both the success and added members and the ones with error, in form of `[{\"member\": {...}, \"user_id\", \"...\", \"error\": {...}}]` | [optional] 

### Return type

[**List<MmTeamMember>**](MmTeamMember.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **createTeam**
> MmTeam createTeam(mmCreateTeamRequest)

Create a team

Create a new team on the system. ##### Permissions Must be authenticated and have the `create_team` permission. 

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


final MmCreateTeamRequest mmCreateTeamRequest = MmCreateTeamRequest(); // MmCreateTeamRequest | Team that is to be created

try {
  final MmTeam? result = await client.teams.createTeam(mmCreateTeamRequest); // await the Future<MmTeam?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->createTeam: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmCreateTeamRequest** | [**MmCreateTeamRequest**](MmCreateTeamRequest.md)| Team that is to be created | 

### Return type

[**MmTeam**](MmTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getAllTeams**
> List<MmTeam> getAllTeams(page, perPage, includeTotalCount, excludePolicyConstrained)

Get teams

For regular users only returns open teams. Users with the \"manage_system\" permission will return teams regardless of type. The result is based on query string parameters - page and per_page. ##### Permissions Must be authenticated. \"manage_system\" permission is required to show all teams. 

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
final int perPage = 56; // int | The number of teams per page.
final bool includeTotalCount = true; // bool | 
final bool excludePolicyConstrained = true; // bool | If set to true, teams which are part of a data retention policy will be excluded. The `sysconsole_read_compliance` permission is required to use this parameter. __Minimum server version__: 5.35

try {
  final List&lt;MmTeam&gt;? result = await client.teams.getAllTeams(page, perPage, includeTotalCount, excludePolicyConstrained); // await the Future<List&lt;MmTeam&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->getAllTeams: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of teams per page. | [optional] [default to 60]
 **includeTotalCount** | **bool**|  | [optional] [default to false]
 **excludePolicyConstrained** | **bool**| If set to true, teams which are part of a data retention policy will be excluded. The `sysconsole_read_compliance` permission is required to use this parameter. __Minimum server version__: 5.35 | [optional] [default to false]

### Return type

[**List<MmTeam>**](MmTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTeam**
> MmTeam getTeam(teamId)

Get a team

Get a team on the system. ##### Permissions Must be authenticated and have the `view_team` permission. 

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


final String teamId = 'teamId_example'; // String | Team GUID

try {
  final MmTeam? result = await client.teams.getTeam(teamId); // await the Future<MmTeam?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->getTeam: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 

### Return type

[**MmTeam**](MmTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTeamByName**
> MmTeam getTeamByName(name)

Get a team by name

Get a team based on provided name string ##### Permissions Must be authenticated, team type is open and have the `view_team` permission. 

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


final String name = 'name_example'; // String | Team Name

try {
  final MmTeam? result = await client.teams.getTeamByName(name); // await the Future<MmTeam?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->getTeamByName: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Team Name | 

### Return type

[**MmTeam**](MmTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTeamIcon**
> getTeamIcon(teamId)

Get the team icon

Get the team icon of the team.  __Minimum server version__: 4.9  ##### Permissions User must be authenticated. In addition, team must be open or the user must have the `view_team` permission. 

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


final String teamId = 'teamId_example'; // String | Team GUID

try {
  await client.teams.getTeamIcon(teamId); 
} catch (e) {
  print('Exception when calling MattermostTeamsApi->getTeamIcon: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTeamInviteInfo**
> MmGetTeamInviteInfo200Response getTeamInviteInfo(inviteId)

Get invite info for a team

Get the `name`, `display_name`, `description` and `id` for a team from the invite id.  __Minimum server version__: 4.0  ##### Permissions No authentication required. 

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


final String inviteId = 'inviteId_example'; // String | Invite id for a team

try {
  final MmGetTeamInviteInfo200Response? result = await client.teams.getTeamInviteInfo(inviteId); // await the Future<MmGetTeamInviteInfo200Response?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->getTeamInviteInfo: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteId** | **String**| Invite id for a team | 

### Return type

[**MmGetTeamInviteInfo200Response**](MmGetTeamInviteInfo200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTeamMember**
> MmTeamMember getTeamMember(teamId, userId)

Get a team member

Get a team member on the system. ##### Permissions Must be authenticated and have the `view_team` permission. 

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


final String teamId = 'teamId_example'; // String | Team GUID
final String userId = 'userId_example'; // String | User GUID

try {
  final MmTeamMember? result = await client.teams.getTeamMember(teamId, userId); // await the Future<MmTeamMember?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->getTeamMember: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userId** | **String**| User GUID | 

### Return type

[**MmTeamMember**](MmTeamMember.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTeamMembers**
> List<MmTeamMember> getTeamMembers(teamId, page, perPage)

Get team members

Get a page team members list based on query string parameters - team id, page and per page. ##### Permissions Must be authenticated and have the `view_team` permission. 

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


final String teamId = 'teamId_example'; // String | Team GUID
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of users per page.

try {
  final List&lt;MmTeamMember&gt;? result = await client.teams.getTeamMembers(teamId, page, perPage); // await the Future<List&lt;MmTeamMember&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->getTeamMembers: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of users per page. | [optional] [default to 60]

### Return type

[**List<MmTeamMember>**](MmTeamMember.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTeamMembersByIds**
> List<MmTeamMember> getTeamMembersByIds(teamId, requestBody)

Get team members by ids

Get a list of team members based on a provided array of user ids. ##### Permissions Must have `view_team` permission for the team. 

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


final String teamId = 'teamId_example'; // String | Team GUID
final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | List of user ids

try {
  final List&lt;MmTeamMember&gt;? result = await client.teams.getTeamMembersByIds(teamId, requestBody); // await the Future<List&lt;MmTeamMember&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->getTeamMembersByIds: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **requestBody** | [**List<String>**](String.md)| List of user ids | 

### Return type

[**List<MmTeamMember>**](MmTeamMember.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTeamMembersForUser**
> List<MmTeamMember> getTeamMembersForUser(userId)

Get team members for a user

Get a list of team members for a user. Useful for getting the ids of teams the user is on and the roles they have in those teams. ##### Permissions Must be logged in as the user or have the `edit_other_users` permission. 

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


final String userId = 'userId_example'; // String | User GUID

try {
  final List&lt;MmTeamMember&gt;? result = await client.teams.getTeamMembersForUser(userId); // await the Future<List&lt;MmTeamMember&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->getTeamMembersForUser: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**List<MmTeamMember>**](MmTeamMember.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTeamStats**
> MmTeamStats getTeamStats(teamId)

Get a team stats

Get a team stats on the system. ##### Permissions Must be authenticated and have the `view_team` permission. 

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


final String teamId = 'teamId_example'; // String | Team GUID

try {
  final MmTeamStats? result = await client.teams.getTeamStats(teamId); // await the Future<MmTeamStats?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->getTeamStats: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 

### Return type

[**MmTeamStats**](MmTeamStats.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTeamUnread**
> MmTeamUnread getTeamUnread(userId, teamId)

Get unreads for a team

Get the unread mention and message counts for a team for the specified user. ##### Permissions Must be the user or have `edit_other_users` permission and have `view_team` permission for the team. 

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


final String userId = 'userId_example'; // String | User GUID
final String teamId = 'teamId_example'; // String | Team GUID

try {
  final MmTeamUnread? result = await client.teams.getTeamUnread(userId, teamId); // await the Future<MmTeamUnread?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->getTeamUnread: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **teamId** | **String**| Team GUID | 

### Return type

[**MmTeamUnread**](MmTeamUnread.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTeamsForUser**
> List<MmTeam> getTeamsForUser(userId)

Get a user's teams

Get a list of teams that a user is on. ##### Permissions Must be authenticated as the user or have the `manage_system` permission. 

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


final String userId = 'userId_example'; // String | User GUID

try {
  final List&lt;MmTeam&gt;? result = await client.teams.getTeamsForUser(userId); // await the Future<List&lt;MmTeam&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->getTeamsForUser: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 

### Return type

[**List<MmTeam>**](MmTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **getTeamsUnreadForUser**
> List<MmTeamUnread> getTeamsUnreadForUser(userId, excludeTeam, includeCollapsedThreads)

Get team unreads for a user

Get the count for unread messages and mentions in the teams the user is a member of. ##### Permissions Must be logged in. 

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


final String userId = 'userId_example'; // String | User GUID
final String excludeTeam = 'excludeTeam_example'; // String | Optional team id to be excluded from the results
final bool includeCollapsedThreads = true; // bool | Boolean to determine whether the collapsed threads should be included or not

try {
  final List&lt;MmTeamUnread&gt;? result = await client.teams.getTeamsUnreadForUser(userId, excludeTeam, includeCollapsedThreads); // await the Future<List&lt;MmTeamUnread&gt;?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->getTeamsUnreadForUser: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User GUID | 
 **excludeTeam** | **String**| Optional team id to be excluded from the results | 
 **includeCollapsedThreads** | **bool**| Boolean to determine whether the collapsed threads should be included or not | [optional] [default to false]

### Return type

[**List<MmTeamUnread>**](MmTeamUnread.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **importTeam**
> MmImportTeam200Response importTeam(teamId, file, filesize, importFrom)

Import a Team from other application

Import a team into a existing team. Import users, channels, posts, hooks. ##### Permissions Must have `permission_import_team` permission. 

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


final String teamId = 'teamId_example'; // String | Team GUID
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | A file to be uploaded in zip format.
final int filesize = 56; // int | The size of the zip file to be imported.
final String importFrom = 'importFrom_example'; // String | String that defines from which application the team was exported to be imported into Mattermost.

try {
  final MmImportTeam200Response? result = await client.teams.importTeam(teamId, file, filesize, importFrom); // await the Future<MmImportTeam200Response?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->importTeam: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **file** | **MultipartFile**| A file to be uploaded in zip format. | 
 **filesize** | **int**| The size of the zip file to be imported. | 
 **importFrom** | **String**| String that defines from which application the team was exported to be imported into Mattermost. | 

### Return type

[**MmImportTeam200Response**](MmImportTeam200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **invalidateEmailInvites**
> MmStatusOK invalidateEmailInvites()

Invalidate active email invitations

Invalidate active email invitations that have not been accepted by the user. ##### Permissions Must have `sysconsole_write_authentication` permission. 

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
  final MmStatusOK? result = await client.teams.invalidateEmailInvites(); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->invalidateEmailInvites: $e\n');
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **inviteGuestsToTeam**
> MmStatusOK inviteGuestsToTeam(teamId, mmInviteGuestsToTeamRequest)

Invite guests to the team by email

Invite guests to existing team channels usign the user's email.  The number of emails that can be sent is rate limited to 20 per hour with a burst of 20 emails. If the rate limit exceeds, the error message contains details on when to retry and when the timer will be reset.  __Minimum server version__: 5.16  ##### Permissions Must have `invite_guest` permission for the team. 

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


final String teamId = 'teamId_example'; // String | Team GUID
final MmInviteGuestsToTeamRequest mmInviteGuestsToTeamRequest = MmInviteGuestsToTeamRequest(); // MmInviteGuestsToTeamRequest | Guests invite information

try {
  final MmStatusOK? result = await client.teams.inviteGuestsToTeam(teamId, mmInviteGuestsToTeamRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->inviteGuestsToTeam: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **mmInviteGuestsToTeamRequest** | [**MmInviteGuestsToTeamRequest**](MmInviteGuestsToTeamRequest.md)| Guests invite information | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **inviteUsersToTeam**
> MmStatusOK inviteUsersToTeam(teamId, requestBody)

Invite users to the team by email

Invite users to the existing team using the user's email.  The number of emails that can be sent is rate limited to 20 per hour with a burst of 20 emails. If the rate limit exceeds, the error message contains details on when to retry and when the timer will be reset. ##### Permissions Must have `invite_user` and `add_user_to_team` permissions for the team. 

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


final String teamId = 'teamId_example'; // String | Team GUID
final List&lt;String&gt; requestBody = [List<String>()]; // List<String> | List of user's email

try {
  final MmStatusOK? result = await client.teams.inviteUsersToTeam(teamId, requestBody); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->inviteUsersToTeam: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **requestBody** | [**List<String>**](String.md)| List of user's email | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **patchTeam**
> MmTeam patchTeam(teamId, mmPatchTeamRequest)

Patch a team

Partially update a team by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have the `manage_team` permission. 

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


final String teamId = 'teamId_example'; // String | Team GUID
final MmPatchTeamRequest mmPatchTeamRequest = MmPatchTeamRequest(); // MmPatchTeamRequest | Team object that is to be updated

try {
  final MmTeam? result = await client.teams.patchTeam(teamId, mmPatchTeamRequest); // await the Future<MmTeam?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->patchTeam: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **mmPatchTeamRequest** | [**MmPatchTeamRequest**](MmPatchTeamRequest.md)| Team object that is to be updated | 

### Return type

[**MmTeam**](MmTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **regenerateTeamInviteId**
> MmTeam regenerateTeamInviteId(teamId)

Regenerate the Invite ID from a Team

Regenerates the invite ID used in invite links of a team ##### Permissions Must be authenticated and have the `manage_team` permission. 

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


final String teamId = 'teamId_example'; // String | Team GUID

try {
  final MmTeam? result = await client.teams.regenerateTeamInviteId(teamId); // await the Future<MmTeam?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->regenerateTeamInviteId: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 

### Return type

[**MmTeam**](MmTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **removeTeamIcon**
> MmStatusOK removeTeamIcon(teamId)

Remove the team icon

Remove the team icon for the team.  __Minimum server version__: 4.10  ##### Permissions Must be authenticated and have the `manage_team` permission. 

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


final String teamId = 'teamId_example'; // String | Team GUID

try {
  final MmStatusOK? result = await client.teams.removeTeamIcon(teamId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->removeTeamIcon: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **removeTeamMember**
> MmStatusOK removeTeamMember(teamId, userId)

Remove user from team

Delete the team member object for a user, effectively removing them from a team. ##### Permissions Must be logged in as the user or have the `remove_user_from_team` permission. 

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


final String teamId = 'teamId_example'; // String | Team GUID
final String userId = 'userId_example'; // String | User GUID

try {
  final MmStatusOK? result = await client.teams.removeTeamMember(teamId, userId); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->removeTeamMember: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userId** | **String**| User GUID | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **restoreTeam**
> MmTeam restoreTeam(teamId)

Restore a team

Restore a team that was previously soft deleted.  __Minimum server version__: 5.24  ##### Permissions Must have the `manage_team` permission. 

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


final String teamId = 'teamId_example'; // String | Team GUID

try {
  final MmTeam? result = await client.teams.restoreTeam(teamId); // await the Future<MmTeam?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->restoreTeam: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 

### Return type

[**MmTeam**](MmTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **searchFiles**
> MmFileInfoList searchFiles(teamId, terms, isOrSearch, timeZoneOffset, includeDeletedChannels, page, perPage)

Search files in a team

Search for files in a team based on file name, extention and file content (if file content extraction is enabled and supported for the files). __Minimum server version__: 5.34 ##### Permissions Must be authenticated and have the `view_team` permission. 

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


final String teamId = 'teamId_example'; // String | Team GUID
final String terms = 'terms_example'; // String | The search terms as inputed by the user. To search for files from a user include `from:someusername`, using a user's username. To search in a specific channel include `in:somechannel`, using the channel name (not the display name). To search for specific extensions included `ext:extension`.
final bool isOrSearch = true; // bool | Set to true if an Or search should be performed vs an And search.
final int timeZoneOffset = 56; // int | Offset from UTC of user timezone for date searches.
final bool includeDeletedChannels = true; // bool | Set to true if deleted channels should be included in the search. (archived channels)
final int page = 56; // int | The page to select. (Only works with Elasticsearch)
final int perPage = 56; // int | The number of posts per page. (Only works with Elasticsearch)

try {
  final MmFileInfoList? result = await client.teams.searchFiles(teamId, terms, isOrSearch, timeZoneOffset, includeDeletedChannels, page, perPage); // await the Future<MmFileInfoList?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->searchFiles: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **terms** | **String**| The search terms as inputed by the user. To search for files from a user include `from:someusername`, using a user's username. To search in a specific channel include `in:somechannel`, using the channel name (not the display name). To search for specific extensions included `ext:extension`. | 
 **isOrSearch** | **bool**| Set to true if an Or search should be performed vs an And search. | 
 **timeZoneOffset** | **int**| Offset from UTC of user timezone for date searches. | [optional] [default to 0]
 **includeDeletedChannels** | **bool**| Set to true if deleted channels should be included in the search. (archived channels) | [optional] 
 **page** | **int**| The page to select. (Only works with Elasticsearch) | [optional] [default to 0]
 **perPage** | **int**| The number of posts per page. (Only works with Elasticsearch) | [optional] [default to 60]

### Return type

[**MmFileInfoList**](MmFileInfoList.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **searchTeams**
> MmSearchTeams200Response searchTeams(mmSearchTeamsRequest)

Search teams

Search teams based on search term and options provided in the request body.  ##### Permissions Logged in user only shows open teams Logged in user with \"manage_system\" permission shows all teams 

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


final MmSearchTeamsRequest mmSearchTeamsRequest = MmSearchTeamsRequest(); // MmSearchTeamsRequest | Search criteria

try {
  final MmSearchTeams200Response? result = await client.teams.searchTeams(mmSearchTeamsRequest); // await the Future<MmSearchTeams200Response?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->searchTeams: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmSearchTeamsRequest** | [**MmSearchTeamsRequest**](MmSearchTeamsRequest.md)| Search criteria | 

### Return type

[**MmSearchTeams200Response**](MmSearchTeams200Response.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **setTeamIcon**
> MmStatusOK setTeamIcon(teamId, image)

Sets the team icon

Sets the team icon for the team.  __Minimum server version__: 4.9  ##### Permissions Must be authenticated and have the `manage_team` permission. 

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


final String teamId = 'teamId_example'; // String | Team GUID
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | The image to be uploaded

try {
  final MmStatusOK? result = await client.teams.setTeamIcon(teamId, image); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->setTeamIcon: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **image** | **MultipartFile**| The image to be uploaded | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **softDeleteTeam**
> MmStatusOK softDeleteTeam(teamId, permanent)

Delete a team

Soft deletes a team, by marking the team as deleted in the database. Soft deleted teams will not be accessible in the user interface.  Optionally use the permanent query parameter to hard delete the team for compliance reasons. As of server version 5.0, to use this feature `ServiceSettings.EnableAPITeamDeletion` must be set to `true` in the server's configuration. ##### Permissions Must have the `manage_team` permission. 

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


final String teamId = 'teamId_example'; // String | Team GUID
final bool permanent = true; // bool | Permanently delete the team, to be used for compliance reasons only. As of server version 5.0, `ServiceSettings.EnableAPITeamDeletion` must be set to `true` in the server's configuration.

try {
  final MmStatusOK? result = await client.teams.softDeleteTeam(teamId, permanent); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->softDeleteTeam: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **permanent** | **bool**| Permanently delete the team, to be used for compliance reasons only. As of server version 5.0, `ServiceSettings.EnableAPITeamDeletion` must be set to `true` in the server's configuration. | [optional] [default to false]

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **teamExists**
> MmTeamExists teamExists(name)

Check if team exists

Check if the team exists based on a team name. ##### Permissions Must be authenticated. 

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


final String name = 'name_example'; // String | Team Name

try {
  final MmTeamExists? result = await client.teams.teamExists(name); // await the Future<MmTeamExists?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->teamExists: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Team Name | 

### Return type

[**MmTeamExists**](MmTeamExists.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **teamMembersMinusGroupMembers**
> teamMembersMinusGroupMembers(teamId, groupIds, page, perPage)

Team members minus group members.

Get the set of users who are members of the team minus the set of users who are members of the given groups. Each user object contains an array of group objects representing the group memberships for that user. Each user object contains the boolean fields `scheme_guest`, `scheme_user`, and `scheme_admin` representing the roles that user has for the given team.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.14 

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


final String teamId = 'teamId_example'; // String | Team GUID
final String groupIds = 'groupIds_example'; // String | A comma-separated list of group ids.
final int page = 56; // int | The page to select.
final int perPage = 56; // int | The number of users per page.

try {
  await client.teams.teamMembersMinusGroupMembers(teamId, groupIds, page, perPage); 
} catch (e) {
  print('Exception when calling MattermostTeamsApi->teamMembersMinusGroupMembers: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **groupIds** | **String**| A comma-separated list of group ids. | [default to '']
 **page** | **int**| The page to select. | [optional] [default to 0]
 **perPage** | **int**| The number of users per page. | [optional] [default to 0]

### Return type

void (empty response body)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateTeam**
> MmTeam updateTeam(teamId, mmUpdateTeamRequest)

Update a team

Update a team by providing the team object. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have the `manage_team` permission. 

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


final String teamId = 'teamId_example'; // String | Team GUID
final MmUpdateTeamRequest mmUpdateTeamRequest = MmUpdateTeamRequest(); // MmUpdateTeamRequest | Team to update

try {
  final MmTeam? result = await client.teams.updateTeam(teamId, mmUpdateTeamRequest); // await the Future<MmTeam?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->updateTeam: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **mmUpdateTeamRequest** | [**MmUpdateTeamRequest**](MmUpdateTeamRequest.md)| Team to update | 

### Return type

[**MmTeam**](MmTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateTeamMemberRoles**
> MmStatusOK updateTeamMemberRoles(teamId, userId, mmUpdateUserRolesRequest)

Update a team member roles

Update a team member roles. Valid team roles are \"team_user\", \"team_admin\" or both of them. Overwrites any previously assigned team roles. ##### Permissions Must be authenticated and have the `manage_team_roles` permission. 

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


final String teamId = 'teamId_example'; // String | Team GUID
final String userId = 'userId_example'; // String | User GUID
final MmUpdateUserRolesRequest mmUpdateUserRolesRequest = MmUpdateUserRolesRequest(); // MmUpdateUserRolesRequest | Space-delimited team roles to assign to the user

try {
  final MmStatusOK? result = await client.teams.updateTeamMemberRoles(teamId, userId, mmUpdateUserRolesRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->updateTeamMemberRoles: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userId** | **String**| User GUID | 
 **mmUpdateUserRolesRequest** | [**MmUpdateUserRolesRequest**](MmUpdateUserRolesRequest.md)| Space-delimited team roles to assign to the user | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateTeamMemberSchemeRoles**
> MmStatusOK updateTeamMemberSchemeRoles(teamId, userId, mmUpdateTeamMemberSchemeRolesRequest)

Update the scheme-derived roles of a team member.

Update a team member's scheme_admin/scheme_user properties. Typically this should either be `scheme_admin=false, scheme_user=true` for ordinary team member, or `scheme_admin=true, scheme_user=true` for a team admin.  __Minimum server version__: 5.0  ##### Permissions Must be authenticated and have the `manage_team_roles` permission. 

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


final String teamId = 'teamId_example'; // String | Team GUID
final String userId = 'userId_example'; // String | User GUID
final MmUpdateTeamMemberSchemeRolesRequest mmUpdateTeamMemberSchemeRolesRequest = MmUpdateTeamMemberSchemeRolesRequest(); // MmUpdateTeamMemberSchemeRolesRequest | Scheme properties.

try {
  final MmStatusOK? result = await client.teams.updateTeamMemberSchemeRoles(teamId, userId, mmUpdateTeamMemberSchemeRolesRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->updateTeamMemberSchemeRoles: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **userId** | **String**| User GUID | 
 **mmUpdateTeamMemberSchemeRolesRequest** | [**MmUpdateTeamMemberSchemeRolesRequest**](MmUpdateTeamMemberSchemeRolesRequest.md)| Scheme properties. | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateTeamPrivacy**
> MmTeam updateTeamPrivacy(teamId, mmUpdateTeamPrivacyRequest)

Update teams's privacy

Updates team's privacy allowing changing a team from Public (open) to Private (invitation only) and back.  __Minimum server version__: 5.24  ##### Permissions `manage_team` permission for the team of the team. 

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


final String teamId = 'teamId_example'; // String | Team GUID
final MmUpdateTeamPrivacyRequest mmUpdateTeamPrivacyRequest = MmUpdateTeamPrivacyRequest(); // MmUpdateTeamPrivacyRequest | 

try {
  final MmTeam? result = await client.teams.updateTeamPrivacy(teamId, mmUpdateTeamPrivacyRequest); // await the Future<MmTeam?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->updateTeamPrivacy: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **mmUpdateTeamPrivacyRequest** | [**MmUpdateTeamPrivacyRequest**](MmUpdateTeamPrivacyRequest.md)|  | 

### Return type

[**MmTeam**](MmTeam.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

# **updateTeamScheme**
> MmStatusOK updateTeamScheme(teamId, mmUpdateTeamSchemeRequest)

Set a team's scheme

Set a team's scheme, more specifically sets the scheme_id value of a team record.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 

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


final String teamId = 'teamId_example'; // String | Team GUID
final MmUpdateTeamSchemeRequest mmUpdateTeamSchemeRequest = MmUpdateTeamSchemeRequest(); // MmUpdateTeamSchemeRequest | Scheme GUID

try {
  final MmStatusOK? result = await client.teams.updateTeamScheme(teamId, mmUpdateTeamSchemeRequest); // await the Future<MmStatusOK?>
  print(result ?? 'resolved to null');
} catch (e) {
  print('Exception when calling MattermostTeamsApi->updateTeamScheme: $e\n');
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| Team GUID | 
 **mmUpdateTeamSchemeRequest** | [**MmUpdateTeamSchemeRequest**](MmUpdateTeamSchemeRequest.md)| Scheme GUID | 

### Return type

[**MmStatusOK**](MmStatusOK.md)

### Authorization

[bearerAuth](../GENERATED_README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to README]](../GENERATED_README.md)

