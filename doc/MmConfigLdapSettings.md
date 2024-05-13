# mattermost_api_plus.model.MmConfigLdapSettings

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


MmConfigLdapSettings example = await client.configLdapSettings.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enable** | **bool** |  | [optional] 
**ldapServer** | **String** |  | [optional] 
**ldapPort** | **int** |  | [optional] 
**connectionSecurity** | **String** |  | [optional] 
**baseDN** | **String** |  | [optional] 
**bindUsername** | **String** |  | [optional] 
**bindPassword** | **String** |  | [optional] 
**userFilter** | **String** |  | [optional] 
**firstNameAttribute** | **String** |  | [optional] 
**lastNameAttribute** | **String** |  | [optional] 
**emailAttribute** | **String** |  | [optional] 
**usernameAttribute** | **String** |  | [optional] 
**nicknameAttribute** | **String** |  | [optional] 
**idAttribute** | **String** |  | [optional] 
**positionAttribute** | **String** |  | [optional] 
**syncIntervalMinutes** | **int** |  | [optional] 
**skipCertificateVerification** | **bool** |  | [optional] 
**queryTimeout** | **int** |  | [optional] 
**maxPageSize** | **int** |  | [optional] 
**loginFieldName** | **String** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


