//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMPublishUserTypingRequest {
  /// Returns a new [MMPublishUserTypingRequest] instance.
  MMPublishUserTypingRequest({
    required this.channelId,
    this.parentId,
  });

  /// The id of the channel to which to direct the typing event.
  String channelId;

  /// The optional id of the root post of the thread to which the user is replying. If unset, the typing event is directed at the entire channel.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMPublishUserTypingRequest && other.channelId == channelId && other.parentId == parentId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (channelId.hashCode) + (parentId == null ? 0 : parentId!.hashCode);

  @override
  String toString() => 'MMPublishUserTypingRequest[channelId=$channelId, parentId=$parentId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'channel_id'] = channelId;
    if (parentId != null) {
      _json[r'parent_id'] = parentId;
    }
    return _json;
  }

  /// Returns a new [MMPublishUserTypingRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMPublishUserTypingRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMPublishUserTypingRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMPublishUserTypingRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMPublishUserTypingRequest(
        channelId: mapValueOfType<String>(json, r'channel_id')!,
        parentId: mapValueOfType<String>(json, r'parent_id'),
      );
    }
    return null;
  }

  static List<MMPublishUserTypingRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMPublishUserTypingRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMPublishUserTypingRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMPublishUserTypingRequest> mapFromJson(dynamic json) {
    final map = <String, MMPublishUserTypingRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMPublishUserTypingRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMPublishUserTypingRequest-objects as value to a dart map
  static Map<String, List<MMPublishUserTypingRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMPublishUserTypingRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMPublishUserTypingRequest.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'channel_id',
  };
}
