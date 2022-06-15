//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMOpenGraphAudiosInner {
  /// Returns a new [MMOpenGraphAudiosInner] instance.
  MMOpenGraphAudiosInner({
    this.url,
    this.secureUrl,
    this.type,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secureUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMOpenGraphAudiosInner && other.url == url && other.secureUrl == secureUrl && other.type == type;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (url == null ? 0 : url!.hashCode) +
      (secureUrl == null ? 0 : secureUrl!.hashCode) +
      (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'MMOpenGraphAudiosInner[url=$url, secureUrl=$secureUrl, type=$type]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (url != null) {
      _json[r'url'] = url;
    }
    if (secureUrl != null) {
      _json[r'secure_url'] = secureUrl;
    }
    if (type != null) {
      _json[r'type'] = type;
    }
    return _json;
  }

  /// Returns a new [MMOpenGraphAudiosInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMOpenGraphAudiosInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMOpenGraphAudiosInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMOpenGraphAudiosInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMOpenGraphAudiosInner(
        url: mapValueOfType<String>(json, r'url'),
        secureUrl: mapValueOfType<String>(json, r'secure_url'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<MMOpenGraphAudiosInner>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMOpenGraphAudiosInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMOpenGraphAudiosInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMOpenGraphAudiosInner> mapFromJson(dynamic json) {
    final map = <String, MMOpenGraphAudiosInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMOpenGraphAudiosInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMOpenGraphAudiosInner-objects as value to a dart map
  static Map<String, List<MMOpenGraphAudiosInner>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMOpenGraphAudiosInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMOpenGraphAudiosInner.listFromJson(
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