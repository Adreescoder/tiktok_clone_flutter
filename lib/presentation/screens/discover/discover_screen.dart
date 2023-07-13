import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tik_tok_clone/presentation/providers/discover_provider.dart';
import 'package:tik_tok_clone/presentation/widgets/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
        body: discoverProvider.initialLoading
            ? const Center(child: CircularProgressIndicator(strokeWidth: 2))
            : VideoCreollableView(videos: discoverProvider.videos));
  }
}
