//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;


class MattermostStatusApi {

  final MattermostApiClient apiClient;
  
  MattermostStatusApi(this.apiClient);


  /// Get user status
  ///
  /// Get user status by id from the server. ##### Permissions Must be authenticated. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User ID
  Future<Response> getUserStatusWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/status'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get user status
  ///
  /// Get user status by id from the server. ##### Permissions Must be authenticated. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User ID
  Future<MMStatus?> getUserStatus(String userId,) async {
    final response = await getUserStatusWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MMStatus',) as MMStatus;
    
    }
    return null;
  }

  /// Get user statuses by id
  ///
  /// Get a list of user statuses by id from the server. ##### Permissions Must be authenticated. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  ///   List of user ids to fetch
  Future<Response> getUsersStatusesByIdsWithHttpInfo(List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/status/ids';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get user statuses by id
  ///
  /// Get a list of user statuses by id from the server. ##### Permissions Must be authenticated. 
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  ///   List of user ids to fetch
  Future<List<MMStatus>?> getUsersStatusesByIds(List<String> requestBody,) async {
    final response = await getUsersStatusesByIdsWithHttpInfo(requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MMStatus>') as List)
        .cast<MMStatus>()
        .toList();

    }
    return null;
  }

  /// Delete user's recent custom status
  ///
  /// Deletes a user's recent custom status by removing the specific status from the recentCustomStatuses in the user's props and updates the user. ##### Permissions Must be logged in as the user whose recent custom status is being deleted. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User ID
  ///
  /// * [MMRemoveRecentCustomStatusRequest] mMRemoveRecentCustomStatusRequest (required):
  ///   Custom Status object that is to be removed from the recent custom statuses.
  Future<Response> postUserRecentCustomStatusDeleteWithHttpInfo(String userId, MMRemoveRecentCustomStatusRequest mMRemoveRecentCustomStatusRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/status/custom/recent/delete'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = mMRemoveRecentCustomStatusRequest;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete user's recent custom status
  ///
  /// Deletes a user's recent custom status by removing the specific status from the recentCustomStatuses in the user's props and updates the user. ##### Permissions Must be logged in as the user whose recent custom status is being deleted. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User ID
  ///
  /// * [MMRemoveRecentCustomStatusRequest] mMRemoveRecentCustomStatusRequest (required):
  ///   Custom Status object that is to be removed from the recent custom statuses.
  Future<void> postUserRecentCustomStatusDelete(String userId, MMRemoveRecentCustomStatusRequest mMRemoveRecentCustomStatusRequest,) async {
    final response = await postUserRecentCustomStatusDeleteWithHttpInfo(userId, mMRemoveRecentCustomStatusRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete user's recent custom status
  ///
  /// Deletes a user's recent custom status by removing the specific status from the recentCustomStatuses in the user's props and updates the user. ##### Permissions Must be logged in as the user whose recent custom status is being deleted. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User ID
  ///
  /// * [MMRemoveRecentCustomStatusRequest] mMRemoveRecentCustomStatusRequest (required):
  ///   Custom Status object that is to be removed from the recent custom statuses.
  Future<Response> removeRecentCustomStatusWithHttpInfo(String userId, MMRemoveRecentCustomStatusRequest mMRemoveRecentCustomStatusRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/status/custom/recent'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = mMRemoveRecentCustomStatusRequest;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete user's recent custom status
  ///
  /// Deletes a user's recent custom status by removing the specific status from the recentCustomStatuses in the user's props and updates the user. ##### Permissions Must be logged in as the user whose recent custom status is being deleted. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User ID
  ///
  /// * [MMRemoveRecentCustomStatusRequest] mMRemoveRecentCustomStatusRequest (required):
  ///   Custom Status object that is to be removed from the recent custom statuses.
  Future<void> removeRecentCustomStatus(String userId, MMRemoveRecentCustomStatusRequest mMRemoveRecentCustomStatusRequest,) async {
    final response = await removeRecentCustomStatusWithHttpInfo(userId, mMRemoveRecentCustomStatusRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Unsets user custom status
  ///
  /// Unsets a user's custom status by updating the user's props and updates the user ##### Permissions Must be logged in as the user whose custom status is being removed. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User ID
  Future<Response> unsetUserCustomStatusWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/status/custom'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Unsets user custom status
  ///
  /// Unsets a user's custom status by updating the user's props and updates the user ##### Permissions Must be logged in as the user whose custom status is being removed. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User ID
  Future<void> unsetUserCustomStatus(String userId,) async {
    final response = await unsetUserCustomStatusWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update user custom status
  ///
  /// Updates a user's custom status by setting the value in the user's props and updates the user. Also save the given custom status to the recent custom statuses in the user's props ##### Permissions Must be logged in as the user whose custom status is being updated. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User ID
  ///
  /// * [MMUpdateUserCustomStatusRequest] mMUpdateUserCustomStatusRequest (required):
  ///   Custom status object that is to be updated
  Future<Response> updateUserCustomStatusWithHttpInfo(String userId, MMUpdateUserCustomStatusRequest mMUpdateUserCustomStatusRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/status/custom'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = mMUpdateUserCustomStatusRequest;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update user custom status
  ///
  /// Updates a user's custom status by setting the value in the user's props and updates the user. Also save the given custom status to the recent custom statuses in the user's props ##### Permissions Must be logged in as the user whose custom status is being updated. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User ID
  ///
  /// * [MMUpdateUserCustomStatusRequest] mMUpdateUserCustomStatusRequest (required):
  ///   Custom status object that is to be updated
  Future<void> updateUserCustomStatus(String userId, MMUpdateUserCustomStatusRequest mMUpdateUserCustomStatusRequest,) async {
    final response = await updateUserCustomStatusWithHttpInfo(userId, mMUpdateUserCustomStatusRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update user status
  ///
  /// Manually set a user's status. When setting a user's status, the status will remain that value until set \"online\" again, which will return the status to being automatically updated based on user activity. ##### Permissions Must have `edit_other_users` permission for the team. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User ID
  ///
  /// * [MMUpdateUserStatusRequest] mMUpdateUserStatusRequest (required):
  ///   Status object that is to be updated
  Future<Response> updateUserStatusWithHttpInfo(String userId, MMUpdateUserStatusRequest mMUpdateUserStatusRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/status'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = mMUpdateUserStatusRequest;

    final queryParams = <MMQueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update user status
  ///
  /// Manually set a user's status. When setting a user's status, the status will remain that value until set \"online\" again, which will return the status to being automatically updated based on user activity. ##### Permissions Must have `edit_other_users` permission for the team. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User ID
  ///
  /// * [MMUpdateUserStatusRequest] mMUpdateUserStatusRequest (required):
  ///   Status object that is to be updated
  Future<MMStatus?> updateUserStatus(String userId, MMUpdateUserStatusRequest mMUpdateUserStatusRequest,) async {
    final response = await updateUserStatusWithHttpInfo(userId, mMUpdateUserStatusRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw MMApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MMStatus',) as MMStatus;
    
    }
    return null;
  }
}
