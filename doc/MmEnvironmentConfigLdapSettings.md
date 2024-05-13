# mattermost_api_plus.model.MmEnvironmentConfigLdapSettings

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


MmEnvironmentConfigLdapSettings example = await client.environmentConfigLdapSettings.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enable** | **bool** |  | [optional] 
**ldapServer** | **bool** |  | [optional] 
**ldapPort** | **bool** |  | [optional] 
**connectionSecurity** | **bool** |  | [optional] 
**baseDN** | **bool** |  | [optional] 
**bindUsername** | **bool** |  | [optional] 
**bindPassword** | **bool** |  | [optional] 
**userFilter** | **bool** |  | [optional] 
**firstNameAttribute** | **bool** |  | [optional] 
**lastNameAttribute** | **bool** |  | [optional] 
**emailAttribute** | **bool** |  | [optional] 
**usernameAttribute** | **bool** |  | [optional] 
**nicknameAttribute** | **bool** |  | [optional] 
**idAttribute** | **bool** |  | [optional] 
**positionAttribute** | **bool** |  | [optional] 
**syncIntervalMinutes** | **bool** |  | [optional] 
**skipCertificateVerification** | **bool** |  | [optional] 
**queryTimeout** | **bool** |  | [optional] 
**maxPageSize** | **bool** |  | [optional] 
**loginFieldName** | **bool** |  | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


