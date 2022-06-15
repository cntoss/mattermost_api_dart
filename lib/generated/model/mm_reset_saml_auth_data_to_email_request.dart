//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMResetSamlAuthDataToEmailRequest {
  /// Returns a new [MMResetSamlAuthDataToEmailRequest] instance.
  MMResetSamlAuthDataToEmailRequest({
    this.includeDeleted = false,
    this.dryRun = false,
    this.userIds = const [],
  });

  /// Whether to include deleted users.
  bool includeDeleted;

  /// If set to true, the number of users who would be affected is returned.
  bool dryRun;

  /// If set to a non-empty array, then users whose IDs are not in the array will be excluded.
  List<String> userIds;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMResetSamlAuthDataToEmailRequest &&
          other.includeDeleted == includeDeleted &&
          other.dryRun == dryRun &&
          other.userIds == userIds;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (includeDeleted.hashCode) + (dryRun.hashCode) + (userIds.hashCode);

  @override
  String toString() =>
      'MMResetSamlAuthDataToEmailRequest[includeDeleted=$includeDeleted, dryRun=$dryRun, userIds=$userIds]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'include_deleted'] = includeDeleted;
    _json[r'dry_run'] = dryRun;
    _json[r'user_ids'] = userIds;
    return _json;
  }

  /// Returns a new [MMResetSamlAuthDataToEmailRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMResetSamlAuthDataToEmailRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMResetSamlAuthDataToEmailRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMResetSamlAuthDataToEmailRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMResetSamlAuthDataToEmailRequest(
        includeDeleted: mapValueOfType<bool>(json, r'include_deleted') ?? false,
        dryRun: mapValueOfType<bool>(json, r'dry_run') ?? false,
        userIds: json[r'user_ids'] is List ? (json[r'user_ids'] as List).cast<String>() : const [],
      );
    }
    return null;
  }

  static List<MMResetSamlAuthDataToEmailRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMResetSamlAuthDataToEmailRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMResetSamlAuthDataToEmailRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMResetSamlAuthDataToEmailRequest> mapFromJson(dynamic json) {
    final map = <String, MMResetSamlAuthDataToEmailRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMResetSamlAuthDataToEmailRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMResetSamlAuthDataToEmailRequest-objects as value to a dart map
  static Map<String, List<MMResetSamlAuthDataToEmailRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMResetSamlAuthDataToEmailRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMResetSamlAuthDataToEmailRequest.listFromJson(
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