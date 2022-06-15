//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMEnvironmentConfigLocalizationSettings {
  /// Returns a new [MMEnvironmentConfigLocalizationSettings] instance.
  MMEnvironmentConfigLocalizationSettings({
    this.defaultServerLocale,
    this.defaultClientLocale,
    this.availableLocales,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? defaultServerLocale;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? defaultClientLocale;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? availableLocales;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMEnvironmentConfigLocalizationSettings &&
          other.defaultServerLocale == defaultServerLocale &&
          other.defaultClientLocale == defaultClientLocale &&
          other.availableLocales == availableLocales;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (defaultServerLocale == null ? 0 : defaultServerLocale!.hashCode) +
      (defaultClientLocale == null ? 0 : defaultClientLocale!.hashCode) +
      (availableLocales == null ? 0 : availableLocales!.hashCode);

  @override
  String toString() =>
      'MMEnvironmentConfigLocalizationSettings[defaultServerLocale=$defaultServerLocale, defaultClientLocale=$defaultClientLocale, availableLocales=$availableLocales]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (defaultServerLocale != null) {
      _json[r'DefaultServerLocale'] = defaultServerLocale;
    }
    if (defaultClientLocale != null) {
      _json[r'DefaultClientLocale'] = defaultClientLocale;
    }
    if (availableLocales != null) {
      _json[r'AvailableLocales'] = availableLocales;
    }
    return _json;
  }

  /// Returns a new [MMEnvironmentConfigLocalizationSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMEnvironmentConfigLocalizationSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MMEnvironmentConfigLocalizationSettings[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MMEnvironmentConfigLocalizationSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMEnvironmentConfigLocalizationSettings(
        defaultServerLocale: mapValueOfType<bool>(json, r'DefaultServerLocale'),
        defaultClientLocale: mapValueOfType<bool>(json, r'DefaultClientLocale'),
        availableLocales: mapValueOfType<bool>(json, r'AvailableLocales'),
      );
    }
    return null;
  }

  static List<MMEnvironmentConfigLocalizationSettings>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMEnvironmentConfigLocalizationSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMEnvironmentConfigLocalizationSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMEnvironmentConfigLocalizationSettings> mapFromJson(dynamic json) {
    final map = <String, MMEnvironmentConfigLocalizationSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMEnvironmentConfigLocalizationSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMEnvironmentConfigLocalizationSettings-objects as value to a dart map
  static Map<String, List<MMEnvironmentConfigLocalizationSettings>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMEnvironmentConfigLocalizationSettings>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMEnvironmentConfigLocalizationSettings.listFromJson(
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