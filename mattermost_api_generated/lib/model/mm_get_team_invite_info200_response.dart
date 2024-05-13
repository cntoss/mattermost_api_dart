//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmGetTeamInviteInfo200Response {
  /// Returns a new [MmGetTeamInviteInfo200Response] instance.
  MmGetTeamInviteInfo200Response({
    this.id,
    this.name,
    this.displayName,
    this.description,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmGetTeamInviteInfo200Response &&
          other.id == id &&
          other.name == name &&
          other.displayName == displayName &&
          other.description == description;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (displayName == null ? 0 : displayName!.hashCode) +
      (description == null ? 0 : description!.hashCode);

  @override
  String toString() =>
      'MmGetTeamInviteInfo200Response[id=$id, name=$name, displayName=$displayName, description=$description]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (name != null) {
      _json[r'name'] = name;
    }
    if (displayName != null) {
      _json[r'display_name'] = displayName;
    }
    if (description != null) {
      _json[r'description'] = description;
    }
    return _json;
  }

  /// Returns a new [MmGetTeamInviteInfo200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmGetTeamInviteInfo200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmGetTeamInviteInfo200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmGetTeamInviteInfo200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmGetTeamInviteInfo200Response(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        displayName: mapValueOfType<String>(json, r'display_name'),
        description: mapValueOfType<String>(json, r'description'),
      );
    }
    return null;
  }

  static List<MmGetTeamInviteInfo200Response>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmGetTeamInviteInfo200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmGetTeamInviteInfo200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmGetTeamInviteInfo200Response> mapFromJson(dynamic json) {
    final map = <String, MmGetTeamInviteInfo200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmGetTeamInviteInfo200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmGetTeamInviteInfo200Response-objects as value to a dart map
  static Map<String, List<MmGetTeamInviteInfo200Response>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmGetTeamInviteInfo200Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmGetTeamInviteInfo200Response.listFromJson(
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
  static const requiredKeys = <String>{};
}