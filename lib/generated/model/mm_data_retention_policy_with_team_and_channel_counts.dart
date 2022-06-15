//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMDataRetentionPolicyWithTeamAndChannelCounts {
  /// Returns a new [MMDataRetentionPolicyWithTeamAndChannelCounts] instance.
  MMDataRetentionPolicyWithTeamAndChannelCounts({
    this.displayName,
    this.postDuration,
    this.id,
    this.teamCount,
    this.channelCount,
  });

  /// The display name for this retention policy.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  /// The number of days a message will be retained before being deleted by this policy. If this value is less than 0, the policy has infinite retention (i.e. messages are never deleted).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? postDuration;

  /// The ID of this retention policy.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The number of teams to which this policy is applied.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? teamCount;

  /// The number of channels to which this policy is applied.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? channelCount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMDataRetentionPolicyWithTeamAndChannelCounts &&
          other.displayName == displayName &&
          other.postDuration == postDuration &&
          other.id == id &&
          other.teamCount == teamCount &&
          other.channelCount == channelCount;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (displayName == null ? 0 : displayName!.hashCode) +
      (postDuration == null ? 0 : postDuration!.hashCode) +
      (id == null ? 0 : id!.hashCode) +
      (teamCount == null ? 0 : teamCount!.hashCode) +
      (channelCount == null ? 0 : channelCount!.hashCode);

  @override
  String toString() =>
      'MMDataRetentionPolicyWithTeamAndChannelCounts[displayName=$displayName, postDuration=$postDuration, id=$id, teamCount=$teamCount, channelCount=$channelCount]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (displayName != null) {
      _json[r'display_name'] = displayName;
    }
    if (postDuration != null) {
      _json[r'post_duration'] = postDuration;
    }
    if (id != null) {
      _json[r'id'] = id;
    }
    if (teamCount != null) {
      _json[r'team_count'] = teamCount;
    }
    if (channelCount != null) {
      _json[r'channel_count'] = channelCount;
    }
    return _json;
  }

  /// Returns a new [MMDataRetentionPolicyWithTeamAndChannelCounts] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMDataRetentionPolicyWithTeamAndChannelCounts? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MMDataRetentionPolicyWithTeamAndChannelCounts[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MMDataRetentionPolicyWithTeamAndChannelCounts[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMDataRetentionPolicyWithTeamAndChannelCounts(
        displayName: mapValueOfType<String>(json, r'display_name'),
        postDuration: mapValueOfType<int>(json, r'post_duration'),
        id: mapValueOfType<String>(json, r'id'),
        teamCount: mapValueOfType<int>(json, r'team_count'),
        channelCount: mapValueOfType<int>(json, r'channel_count'),
      );
    }
    return null;
  }

  static List<MMDataRetentionPolicyWithTeamAndChannelCounts>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMDataRetentionPolicyWithTeamAndChannelCounts>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMDataRetentionPolicyWithTeamAndChannelCounts.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMDataRetentionPolicyWithTeamAndChannelCounts> mapFromJson(dynamic json) {
    final map = <String, MMDataRetentionPolicyWithTeamAndChannelCounts>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMDataRetentionPolicyWithTeamAndChannelCounts.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMDataRetentionPolicyWithTeamAndChannelCounts-objects as value to a dart map
  static Map<String, List<MMDataRetentionPolicyWithTeamAndChannelCounts>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMDataRetentionPolicyWithTeamAndChannelCounts>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMDataRetentionPolicyWithTeamAndChannelCounts.listFromJson(
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
