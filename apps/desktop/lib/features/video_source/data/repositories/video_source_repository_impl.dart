import '../../domain/entities/video_source.dart';
import '../../domain/repositories/video_source_repository.dart';

class VideoSourceRepositoryImpl implements VideoSourceRepository {
  @override
  Future<void> delete(String id) async {}

  @override
  Future<List<VideoSource>> getAll() async {
    return [];
  }

  @override
  Future<VideoSource?> getById(String id) async {
    return null;
  }

  @override
  Future<void> save(VideoSource source) async {}

  @override
  Future<bool> validate(VideoSource source) async {
    return true;
  }
}
