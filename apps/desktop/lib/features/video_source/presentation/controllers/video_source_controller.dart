import 'package:flutter/foundation.dart';

import '../../domain/entities/video_source.dart';
import '../../domain/repositories/video_source_repository.dart';

class VideoSourceController extends ChangeNotifier {
  VideoSourceController(this._repository);

  final VideoSourceRepository _repository;

  final List<VideoSource> _sources = [];

  bool _isLoading = false;
  String? _errorMessage;
  String _searchQuery = '';

  List<VideoSource> get sources {
    if (_searchQuery.trim().isEmpty) {
      return List.unmodifiable(_sources);
    }

    final query = _searchQuery.toLowerCase();

    return List.unmodifiable(
      _sources.where((source) => source.name.toLowerCase().contains(query)),
    );
  }

  bool get isLoading => _isLoading;

  String? get errorMessage => _errorMessage;

  String get searchQuery => _searchQuery;

  Future<void> refresh() async {
    _setLoading(true);

    try {
      _errorMessage = null;

      final result = await _repository.getAll();

      _sources
        ..clear()
        ..addAll(result);
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _setLoading(false);
    }
  }

  void search(String query) {
    _searchQuery = query.trim();
    notifyListeners();
  }

  Future<void> add(VideoSource source) async {
    await _repository.save(source);

    _sources.add(source);

    notifyListeners();
  }

  Future<void> remove(String id) async {
    await _repository.delete(id);

    _sources.removeWhere((source) => source.id == id);

    notifyListeners();
  }

  Future<bool> validate(VideoSource source) {
    return _repository.validate(source);
  }

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
