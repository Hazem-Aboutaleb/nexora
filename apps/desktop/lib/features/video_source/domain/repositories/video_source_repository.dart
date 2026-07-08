import '../entities/video_source.dart';

abstract interface class VideoSourceRepository {
  Future<List<VideoSource>> getAll();

  Future<VideoSource?> getById(String id);

  Future<void> save(VideoSource source);

  Future<void> delete(String id);

  Future<bool> validate(VideoSource source);
}
