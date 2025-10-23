import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widgate_app_220836/presentation/providers/discover_provider.dart';
import 'package:widgate_app_220836/presentation/widgets/shared/video_scrollable.dart';

class DiscoveryScreen extends StatelessWidget {
  const DiscoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      body: discoverProvider.initialLoading
          ? const Center(child: CircularProgressIndicator(strokeWidth: 2))
          : VideoScrollable(videos: discoverProvider.videos),
    );
  }
}
