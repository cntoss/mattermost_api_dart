//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMTopChannelList {
  /// Returns a new [MMTopChannelList] instance.
  MMTopChannelList({
    this.hasNext,
    this.items = const [],
  });

  /// Indicates if there is another page of channels that can be fetched.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasNext;

  /// List of channels.
  List<MMTopChannel> items;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MMTopChannelList && other.hasNext == hasNext && other.items == items;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (hasNext == null ? 0 : hasNext!.hashCode) + (items.hashCode);

  @override
  String toString() => 'MMTopChannelList[hasNext=$hasNext, items=$items]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (hasNext != null) {
      _json[r'has_next'] = hasNext;
    }
    _json[r'items'] = items;
    return _json;
  }

  /// Returns a new [MMTopChannelList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMTopChannelList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMTopChannelList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMTopChannelList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMTopChannelList(
        hasNext: mapValueOfType<bool>(json, r'has_next'),
        items: MMTopChannel.listFromJson(json[r'items']) ?? const [],
      );
    }
    return null;
  }

  static List<MMTopChannelList>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMTopChannelList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMTopChannelList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMTopChannelList> mapFromJson(dynamic json) {
    final map = <String, MMTopChannelList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMTopChannelList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMTopChannelList-objects as value to a dart map
  static Map<String, List<MMTopChannelList>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMTopChannelList>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMTopChannelList.listFromJson(
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
