//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:mattermost_api_plus/api.dart';
import 'package:test/test.dart';

/// tests for MattermostJobsApi
void main() {
  // final instance = MattermostJobsApi();

  group('tests for MattermostJobsApi', () {
    // Cancel a job.
    //
    // Cancel a job. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission.
    //
    //Future<MmStatusOK> cancelJob(String jobId) async
    test('test cancelJob', () async {
      // TODO
    });

    // Create a new job.
    //
    // Create a new job. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission.
    //
    //Future<MmJob> createJob(MmCreateJobRequest mmCreateJobRequest) async
    test('test createJob', () async {
      // TODO
    });

    // Download the results of a job.
    //
    // Download the result of a single job. __Minimum server version: 5.28__ ##### Permissions Must have `manage_jobs` permission.
    //
    //Future downloadJob(String jobId) async
    test('test downloadJob', () async {
      // TODO
    });

    // Get a job.
    //
    // Gets a single job. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission.
    //
    //Future<MmJob> getJob(String jobId) async
    test('test getJob', () async {
      // TODO
    });

    // Get the jobs.
    //
    // Get a page of jobs. Use the query parameters to modify the behaviour of this endpoint. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission.
    //
    //Future<List<MmJob>> getJobs({ int page, int perPage }) async
    test('test getJobs', () async {
      // TODO
    });

    // Get the jobs of the given type.
    //
    // Get a page of jobs of the given type. Use the query parameters to modify the behaviour of this endpoint. __Minimum server version: 4.1__ ##### Permissions Must have `manage_jobs` permission.
    //
    //Future<List<MmJob>> getJobsByType(String type, { int page, int perPage }) async
    test('test getJobsByType', () async {
      // TODO
    });
  });
}
