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

/// tests for MattermostWebhooksApi
void main() {
  // final instance = MattermostWebhooksApi();

  group('tests for MattermostWebhooksApi', () {
    // Create an incoming webhook
    //
    // Create an incoming webhook for a channel. ##### Permissions `manage_webhooks` for the team the webhook is in.  `manage_others_incoming_webhooks` for the team the webhook is in if the user is different than the requester.
    //
    //Future<MmIncomingWebhook> createIncomingWebhook(MmCreateIncomingWebhookRequest mmCreateIncomingWebhookRequest) async
    test('test createIncomingWebhook', () async {
      // TODO
    });

    // Create an outgoing webhook
    //
    // Create an outgoing webhook for a team. ##### Permissions `manage_webhooks` for the team the webhook is in.  `manage_others_outgoing_webhooks` for the team the webhook is in if the user is different than the requester.
    //
    //Future<MmOutgoingWebhook> createOutgoingWebhook(MmCreateOutgoingWebhookRequest mmCreateOutgoingWebhookRequest) async
    test('test createOutgoingWebhook', () async {
      // TODO
    });

    // Delete an incoming webhook
    //
    // Delete an incoming webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel.
    //
    //Future<MmStatusOK> deleteIncomingWebhook(String hookId) async
    test('test deleteIncomingWebhook', () async {
      // TODO
    });

    // Delete an outgoing webhook
    //
    // Delete an outgoing webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel.
    //
    //Future<MmStatusOK> deleteOutgoingWebhook(String hookId) async
    test('test deleteOutgoingWebhook', () async {
      // TODO
    });

    // Get an incoming webhook
    //
    // Get an incoming webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel.
    //
    //Future<MmIncomingWebhook> getIncomingWebhook(String hookId) async
    test('test getIncomingWebhook', () async {
      // TODO
    });

    // List incoming webhooks
    //
    // Get a page of a list of incoming webhooks. Optionally filter for a specific team using query parameters. ##### Permissions `manage_webhooks` for the system or `manage_webhooks` for the specific team.
    //
    //Future<List<MmIncomingWebhook>> getIncomingWebhooks({ int page, int perPage, String teamId }) async
    test('test getIncomingWebhooks', () async {
      // TODO
    });

    // Get an outgoing webhook
    //
    // Get an outgoing webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel.
    //
    //Future<MmOutgoingWebhook> getOutgoingWebhook(String hookId) async
    test('test getOutgoingWebhook', () async {
      // TODO
    });

    // List outgoing webhooks
    //
    // Get a page of a list of outgoing webhooks. Optionally filter for a specific team or channel using query parameters. ##### Permissions `manage_webhooks` for the system or `manage_webhooks` for the specific team/channel.
    //
    //Future<List<MmOutgoingWebhook>> getOutgoingWebhooks({ int page, int perPage, String teamId, String channelId }) async
    test('test getOutgoingWebhooks', () async {
      // TODO
    });

    // Regenerate the token for the outgoing webhook.
    //
    // Regenerate the token for the outgoing webhook. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel.
    //
    //Future<MmStatusOK> regenOutgoingHookToken(String hookId) async
    test('test regenOutgoingHookToken', () async {
      // TODO
    });

    // Update an incoming webhook
    //
    // Update an incoming webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel.
    //
    //Future<MmIncomingWebhook> updateIncomingWebhook(String hookId, MmUpdateIncomingWebhookRequest mmUpdateIncomingWebhookRequest) async
    test('test updateIncomingWebhook', () async {
      // TODO
    });

    // Update an outgoing webhook
    //
    // Update an outgoing webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel.
    //
    //Future<MmOutgoingWebhook> updateOutgoingWebhook(String hookId, MmUpdateOutgoingWebhookRequest mmUpdateOutgoingWebhookRequest) async
    test('test updateOutgoingWebhook', () async {
      // TODO
    });
  });
}
