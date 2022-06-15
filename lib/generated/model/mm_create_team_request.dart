//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMCreateTeamRequest {
  /// Returns a new [MMCreateTeamRequest] instance.
  MMCreateTeamRequest({
    required this.name,
    required this.displayName,
    required this.type,
  });

  /// Unique handler for a team, will be present in the team URL
  String name;

  /// Non-unique UI name for the team
  String displayName;

  /// `'O'` for open, `'I'` for invite only
  String type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMCreateTeamRequest && other.name == name && other.displayName == displayName && other.type == type;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name.hashCode) + (displayName.hashCode) + (type.hashCode);

  @override
  String toString() => 'MMCreateTeamRequest[name=$name, displayName=$displayName, type=$type]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'name'] = name;
    _json[r'display_name'] = displayName;
    _json[r'type'] = type;
    return _json;
  }

  /// Returns a new [MMCreateTeamRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMCreateTeamRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMCreateTeamRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMCreateTeamRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMCreateTeamRequest(
        name: mapValueOfType<String>(json, r'name')!,
        displayName: mapValueOfType<String>(json, r'display_name')!,
        type: mapValueOfType<String>(json, r'type')!,
      );
    }
    return null;
  }

  static List<MMCreateTeamRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMCreateTeamRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMCreateTeamRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMCreateTeamRequest> mapFromJson(dynamic json) {
    final map = <String, MMCreateTeamRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMCreateTeamRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMCreateTeamRequest-objects as value to a dart map
  static Map<String, List<MMCreateTeamRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMCreateTeamRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMCreateTeamRequest.listFromJson(
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
    'name',
    'display_name',
    'type',
  };
}