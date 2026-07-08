import '../entities/video_source.dart';

abstract interface class VideoSourceService {
  Future<bool> connect(VideoSource source);

  Future<void> disconnect(VideoSource source);

  Future<bool> test(VideoSource source);
}
