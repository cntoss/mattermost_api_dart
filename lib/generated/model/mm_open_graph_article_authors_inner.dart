//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMOpenGraphArticleAuthorsInner {
  /// Returns a new [MMOpenGraphArticleAuthorsInner] instance.
  MMOpenGraphArticleAuthorsInner({
    this.firstName,
    this.lastName,
    this.username,
    this.gender,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gender;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMOpenGraphArticleAuthorsInner &&
          other.firstName == firstName &&
          other.lastName == lastName &&
          other.username == username &&
          other.gender == gender;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (firstName == null ? 0 : firstName!.hashCode) +
      (lastName == null ? 0 : lastName!.hashCode) +
      (username == null ? 0 : username!.hashCode) +
      (gender == null ? 0 : gender!.hashCode);

  @override
  String toString() =>
      'MMOpenGraphArticleAuthorsInner[firstName=$firstName, lastName=$lastName, username=$username, gender=$gender]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (firstName != null) {
      _json[r'first_name'] = firstName;
    }
    if (lastName != null) {
      _json[r'last_name'] = lastName;
    }
    if (username != null) {
      _json[r'username'] = username;
    }
    if (gender != null) {
      _json[r'gender'] = gender;
    }
    return _json;
  }

  /// Returns a new [MMOpenGraphArticleAuthorsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMOpenGraphArticleAuthorsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMOpenGraphArticleAuthorsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMOpenGraphArticleAuthorsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMOpenGraphArticleAuthorsInner(
        firstName: mapValueOfType<String>(json, r'first_name'),
        lastName: mapValueOfType<String>(json, r'last_name'),
        username: mapValueOfType<String>(json, r'username'),
        gender: mapValueOfType<String>(json, r'gender'),
      );
    }
    return null;
  }

  static List<MMOpenGraphArticleAuthorsInner>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMOpenGraphArticleAuthorsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMOpenGraphArticleAuthorsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMOpenGraphArticleAuthorsInner> mapFromJson(dynamic json) {
    final map = <String, MMOpenGraphArticleAuthorsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMOpenGraphArticleAuthorsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMOpenGraphArticleAuthorsInner-objects as value to a dart map
  static Map<String, List<MMOpenGraphArticleAuthorsInner>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMOpenGraphArticleAuthorsInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMOpenGraphArticleAuthorsInner.listFromJson(
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