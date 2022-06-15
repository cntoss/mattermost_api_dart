//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMExecuteCommandRequest {
  /// Returns a new [MMExecuteCommandRequest] instance.
  MMExecuteCommandRequest({
    required this.channelId,
    required this.command,
  });

  /// Channel Id where the command will execute
  String channelId;

  /// The slash command to execute
  String command;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMExecuteCommandRequest && other.channelId == channelId && other.command == command;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (channelId.hashCode) + (command.hashCode);

  @override
  String toString() => 'MMExecuteCommandRequest[channelId=$channelId, command=$command]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'channel_id'] = channelId;
    _json[r'command'] = command;
    return _json;
  }

  /// Returns a new [MMExecuteCommandRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMExecuteCommandRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMExecuteCommandRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMExecuteCommandRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMExecuteCommandRequest(
        channelId: mapValueOfType<String>(json, r'channel_id')!,
        command: mapValueOfType<String>(json, r'command')!,
      );
    }
    return null;
  }

  static List<MMExecuteCommandRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMExecuteCommandRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMExecuteCommandRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMExecuteCommandRequest> mapFromJson(dynamic json) {
    final map = <String, MMExecuteCommandRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMExecuteCommandRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMExecuteCommandRequest-objects as value to a dart map
  static Map<String, List<MMExecuteCommandRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMExecuteCommandRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMExecuteCommandRequest.listFromJson(
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
    'command',
  };
}