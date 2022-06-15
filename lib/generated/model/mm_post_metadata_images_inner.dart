//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMPostMetadataImagesInner {
  /// Returns a new [MMPostMetadataImagesInner] instance.
  MMPostMetadataImagesInner({
    this.height,
    this.width,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? height;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? width;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MMPostMetadataImagesInner && other.height == height && other.width == width;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (height == null ? 0 : height!.hashCode) + (width == null ? 0 : width!.hashCode);

  @override
  String toString() => 'MMPostMetadataImagesInner[height=$height, width=$width]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (height != null) {
      _json[r'height'] = height;
    }
    if (width != null) {
      _json[r'width'] = width;
    }
    return _json;
  }

  /// Returns a new [MMPostMetadataImagesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMPostMetadataImagesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMPostMetadataImagesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMPostMetadataImagesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMPostMetadataImagesInner(
        height: mapValueOfType<int>(json, r'height'),
        width: mapValueOfType<int>(json, r'width'),
      );
    }
    return null;
  }

  static List<MMPostMetadataImagesInner>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMPostMetadataImagesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMPostMetadataImagesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMPostMetadataImagesInner> mapFromJson(dynamic json) {
    final map = <String, MMPostMetadataImagesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMPostMetadataImagesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMPostMetadataImagesInner-objects as value to a dart map
  static Map<String, List<MMPostMetadataImagesInner>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMPostMetadataImagesInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMPostMetadataImagesInner.listFromJson(
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
