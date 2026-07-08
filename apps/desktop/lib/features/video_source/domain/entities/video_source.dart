import '../enums/video_source_status.dart';
import '../enums/video_source_type.dart';
import '../value_objects/source_credentials.dart';

class VideoSource {
  const VideoSource({
    required this.id,
    required this.name,
    required this.type,
    required this.status,
    required this.credentials,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String name;

  final VideoSourceType type;
  final VideoSourceStatus status;

  final SourceCredentials credentials;

  final DateTime createdAt;
  final DateTime updatedAt;

  bool get isConnected => status == VideoSourceStatus.connected;

  VideoSource copyWith({
    String? id,
    String? name,
    VideoSourceType? type,
    VideoSourceStatus? status,
    SourceCredentials? credentials,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return VideoSource(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      status: status ?? this.status,
      credentials: credentials ?? this.credentials,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is VideoSource &&
        other.id == id &&
        other.name == name &&
        other.type == type &&
        other.status == status &&
        other.credentials == credentials &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      Object.hash(id, name, type, status, credentials, createdAt, updatedAt);
}
