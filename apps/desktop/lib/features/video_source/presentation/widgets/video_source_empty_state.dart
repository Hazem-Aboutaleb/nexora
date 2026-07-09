import 'package:flutter/material.dart';

class VideoSourceEmptyState extends StatelessWidget {
  const VideoSourceEmptyState({super.key, required this.onAddPressed});

  final VoidCallback onAddPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 420),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.videocam_off_outlined,
                size: 72,
                color: theme.colorScheme.outline,
              ),
              const SizedBox(height: 24),
              Text(
                'No Video Sources',
                style: theme.textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                'Add your first camera, DVR, NVR or video file to start analyzing video with Nexora.',
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              FilledButton.icon(
                onPressed: onAddPressed,
                icon: const Icon(Icons.add),
                label: const Text('Add Video Source'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
