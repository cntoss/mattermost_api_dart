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

// tests for MmPostMetadata
void main() {
  // final instance = MmPostMetadata();

  group('test MmPostMetadata', () {
    // Information about content embedded in the post including OpenGraph previews, image link previews, and message attachments. This field will be null if the post does not contain embedded content.
    // List<MmPostMetadataEmbedsInner> embeds (default value: const [])
    test('to test the property `embeds`', () async {
      // TODO
    });

    // The custom emojis that appear in this point or have been used in reactions to this post. This field will be null if the post does not contain custom emojis.
    // List<MmEmoji> emojis (default value: const [])
    test('to test the property `emojis`', () async {
      // TODO
    });

    // The FileInfo objects for any files attached to the post. This field will be null if the post does not have any file attachments.
    // List<MmFileInfo> files (default value: const [])
    test('to test the property `files`', () async {
      // TODO
    });

    // An object mapping the URL of an external image to an object containing the dimensions of that image. This field will be null if the post or its embedded content does not reference any external images.
    // List<MmPostMetadataImagesInner> images (default value: const [])
    test('to test the property `images`', () async {
      // TODO
    });

    // Any reactions made to this point. This field will be null if no reactions have been made to this post.
    // List<MmReaction> reactions (default value: const [])
    test('to test the property `reactions`', () async {
      // TODO
    });
  });
}
