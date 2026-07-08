import '../../domain/entities/video_source.dart';
import '../../domain/enums/video_source_status.dart';
import '../../domain/enums/video_source_type.dart';
import '../../domain/value_objects/source_credentials.dart';

class VideoSourceModel extends VideoSource {
  const VideoSourceModel({
    required super.id,
    required super.name,
    required super.type,
    required super.status,
    required super.credentials,
    required super.createdAt,
    required super.updatedAt,
  });

  factory VideoSourceModel.fromEntity(VideoSource source) {
    return VideoSourceModel(
      id: source.id,
      name: source.name,
      type: source.type,
      status: source.status,
      credentials: source.credentials,
      createdAt: source.createdAt,
      updatedAt: source.updatedAt,
    );
  }

  factory VideoSourceModel.fromJson(Map<String, dynamic> json) {
    return VideoSourceModel(
      id: json['id'] as String,
      name: json['name'] as String,
      type: VideoSourceType.values.byName(json['type'] as String),
      status: VideoSourceStatus.values.byName(json['status'] as String),
      credentials: SourceCredentials(
        host: json['host'] as String?,
        port: json['port'] as int?,
        username: json['username'] as String?,
        password: json['password'] as String?,
        path: json['path'] as String?,
        token: json['token'] as String?,
      ),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type.name,
      'status': status.name,
      'host': credentials.host,
      'port': credentials.port,
      'username': credentials.username,
      'password': credentials.password,
      'path': credentials.path,
      'token': credentials.token,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
