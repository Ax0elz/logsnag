///
/// Example:
/// ```dart
/// final Log = LogEntity(
///  channel: 'channel',
///  event: 'event',
///  description: 'description',
///  icon: '🚀',
///  tags: [
///   LogTagEntity(
///    name: 'tag',
///    value: 'value',
///   ),
///  ],
///  notify: true,
///  parser: 'parser',
/// );
/// ```
class IdentifyEntity {
  /// Creates a new instance of [IdentifyEntity]
  IdentifyEntity({
    this.project,
    this.userId,
    this.properties,
  });

  /// Channel to Log to
  /// Example: 'channel'
  /// Required: true
  /// Type: String
  /// Note: channel should be a valid channel name
  final String? project;

  /// Event to Log
  /// Example: 'event'
  /// Required: true
  /// Type: String
  /// Note: event should be a valid event name
  final String? userId;

  /// Event tags
  /// Example: [
  /// {
  ///   'name': 'tag',
  ///   'value': 'value',
  /// },
  /// ]
  /// Required: false
  /// Type: List<LogTagEntity>
  final Map<String, dynamic>? properties;
}

/// Extension methods for [IdentifyEntity]
/// [IdentifyEntity] to JSON
extension IdentifyEntityExtension on IdentifyEntity {
  /// Converts [IdentifyEntity] to JSON
  Map<String, dynamic> toJson() {
    return {
      'project': project,
      'user_id': userId,
      if (properties != null) 'properties': properties,
    };
  }
}
