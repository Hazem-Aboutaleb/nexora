import 'package:flutter/material.dart';

import '../../domain/entities/video_source.dart';
import '../../domain/enums/video_source_status.dart';
import '../../domain/enums/video_source_type.dart';

class VideoSourceCard extends StatelessWidget {
  const VideoSourceCard({super.key, required this.source, this.onTap});

  final VideoSource source;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(radius: 24, child: Icon(_iconForType(source.type))),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(source.name, style: theme.textTheme.titleMedium),
                    const SizedBox(height: 6),
                    Text(source.type.name, style: theme.textTheme.bodyMedium),
                  ],
                ),
              ),
              _StatusChip(source: source),
            ],
          ),
        ),
      ),
    );
  }

  IconData _iconForType(VideoSourceType type) {
    switch (type) {
      case VideoSourceType.rtsp:
        return Icons.router_outlined;

      case VideoSourceType.onvif:
        return Icons.settings_input_antenna;

      case VideoSourceType.dvr:
        return Icons.video_settings;

      case VideoSourceType.nvr:
        return Icons.storage;

      case VideoSourceType.ipCamera:
        return Icons.videocam;

      case VideoSourceType.videoFile:
        return Icons.movie;

      case VideoSourceType.usbCamera:
        return Icons.usb;

      case VideoSourceType.cloud:
        return Icons.cloud;
    }
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.source});

  final VideoSource source;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    final (String label, Color color) = switch (source.status) {
      VideoSourceStatus.connected => ('Connected', Colors.green),
      VideoSourceStatus.connecting => ('Connecting', Colors.orange),
      VideoSourceStatus.failed => ('Failed', scheme.error),
      VideoSourceStatus.disconnected => ('Disconnected', scheme.outline),
    };

    return Chip(
      label: Text(label),
      backgroundColor: color.withValues(alpha: 0.12),
      side: BorderSide.none,
    );
  }
}
