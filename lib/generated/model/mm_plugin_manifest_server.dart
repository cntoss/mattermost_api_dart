//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMPluginManifestServer {
  /// Returns a new [MMPluginManifestServer] instance.
  MMPluginManifestServer({
    this.executables,
    this.executable,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MMPluginManifestServerExecutables? executables;

  /// Path to the executable binary.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? executable;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMPluginManifestServer && other.executables == executables && other.executable == executable;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (executables == null ? 0 : executables!.hashCode) + (executable == null ? 0 : executable!.hashCode);

  @override
  String toString() => 'MMPluginManifestServer[executables=$executables, executable=$executable]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (executables != null) {
      _json[r'executables'] = executables;
    }
    if (executable != null) {
      _json[r'executable'] = executable;
    }
    return _json;
  }

  /// Returns a new [MMPluginManifestServer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMPluginManifestServer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMPluginManifestServer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMPluginManifestServer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMPluginManifestServer(
        executables: MMPluginManifestServerExecutables.fromJson(json[r'executables']),
        executable: mapValueOfType<String>(json, r'executable'),
      );
    }
    return null;
  }

  static List<MMPluginManifestServer>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMPluginManifestServer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMPluginManifestServer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMPluginManifestServer> mapFromJson(dynamic json) {
    final map = <String, MMPluginManifestServer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMPluginManifestServer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMPluginManifestServer-objects as value to a dart map
  static Map<String, List<MMPluginManifestServer>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMPluginManifestServer>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMPluginManifestServer.listFromJson(
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