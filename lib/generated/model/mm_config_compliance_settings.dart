//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMConfigComplianceSettings {
  /// Returns a new [MMConfigComplianceSettings] instance.
  MMConfigComplianceSettings({
    this.enable,
    this.directory,
    this.enableDaily,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? directory;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableDaily;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMConfigComplianceSettings &&
          other.enable == enable &&
          other.directory == directory &&
          other.enableDaily == enableDaily;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (enable == null ? 0 : enable!.hashCode) +
      (directory == null ? 0 : directory!.hashCode) +
      (enableDaily == null ? 0 : enableDaily!.hashCode);

  @override
  String toString() => 'MMConfigComplianceSettings[enable=$enable, directory=$directory, enableDaily=$enableDaily]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (enable != null) {
      _json[r'Enable'] = enable;
    }
    if (directory != null) {
      _json[r'Directory'] = directory;
    }
    if (enableDaily != null) {
      _json[r'EnableDaily'] = enableDaily;
    }
    return _json;
  }

  /// Returns a new [MMConfigComplianceSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMConfigComplianceSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMConfigComplianceSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMConfigComplianceSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMConfigComplianceSettings(
        enable: mapValueOfType<bool>(json, r'Enable'),
        directory: mapValueOfType<String>(json, r'Directory'),
        enableDaily: mapValueOfType<bool>(json, r'EnableDaily'),
      );
    }
    return null;
  }

  static List<MMConfigComplianceSettings>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMConfigComplianceSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMConfigComplianceSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMConfigComplianceSettings> mapFromJson(dynamic json) {
    final map = <String, MMConfigComplianceSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMConfigComplianceSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMConfigComplianceSettings-objects as value to a dart map
  static Map<String, List<MMConfigComplianceSettings>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMConfigComplianceSettings>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMConfigComplianceSettings.listFromJson(
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