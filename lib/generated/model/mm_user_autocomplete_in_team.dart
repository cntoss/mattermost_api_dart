//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMUserAutocompleteInTeam {
  /// Returns a new [MMUserAutocompleteInTeam] instance.
  MMUserAutocompleteInTeam({
    this.inTeam = const [],
  });

  /// A list of user objects in the team
  List<MMUser> inTeam;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MMUserAutocompleteInTeam && other.inTeam == inTeam;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (inTeam.hashCode);

  @override
  String toString() => 'MMUserAutocompleteInTeam[inTeam=$inTeam]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'in_team'] = inTeam;
    return _json;
  }

  /// Returns a new [MMUserAutocompleteInTeam] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMUserAutocompleteInTeam? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMUserAutocompleteInTeam[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMUserAutocompleteInTeam[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMUserAutocompleteInTeam(
        inTeam: MMUser.listFromJson(json[r'in_team']) ?? const [],
      );
    }
    return null;
  }

  static List<MMUserAutocompleteInTeam>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMUserAutocompleteInTeam>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMUserAutocompleteInTeam.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMUserAutocompleteInTeam> mapFromJson(dynamic json) {
    final map = <String, MMUserAutocompleteInTeam>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMUserAutocompleteInTeam.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMUserAutocompleteInTeam-objects as value to a dart map
  static Map<String, List<MMUserAutocompleteInTeam>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMUserAutocompleteInTeam>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMUserAutocompleteInTeam.listFromJson(
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