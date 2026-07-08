import '../../domain/entities/video_source.dart';
import '../../domain/repositories/video_source_repository.dart';

class VideoSourceController {
  VideoSourceController(this._repository);

  final VideoSourceRepository _repository;

  Future<List<VideoSource>> loadSources() {
    return _repository.getAll();
  }

  Future<void> saveSource(VideoSource source) {
    return _repository.save(source);
  }

  Future<void> deleteSource(String id) {
    return _repository.delete(id);
  }

  Future<bool> validateSource(VideoSource source) {
    return _repository.validate(source);
  }
}
