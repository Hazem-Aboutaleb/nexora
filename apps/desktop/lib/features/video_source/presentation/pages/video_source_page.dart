import 'package:flutter/material.dart';

import '../widgets/video_source_empty_state.dart';

class VideoSourcePage extends StatefulWidget {
  const VideoSourcePage({super.key});

  @override
  State<VideoSourcePage> createState() => _VideoSourcePageState();
}

class _VideoSourcePageState extends State<VideoSourcePage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onAddSource() {
    // سيتم تنفيذ Add Source Dialog في الـ Task التالية.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Sources'),
        actions: [
          IconButton(
            onPressed: () {},
            tooltip: 'Refresh',
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _onAddSource,
        icon: const Icon(Icons.add),
        label: const Text('Add Source'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SearchBar(
                controller: _searchController,
                hintText: 'Search video sources...',
                leading: const Icon(Icons.search),
                trailing: const [Icon(Icons.filter_list)],
                onChanged: (_) {},
              ),
              const SizedBox(height: 24),
              Expanded(
                child: VideoSourceEmptyState(onAddPressed: _onAddSource),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
