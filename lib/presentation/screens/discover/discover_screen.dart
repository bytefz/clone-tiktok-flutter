import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:toktik/presentation/providers/providers.dart';
import 'package:toktik/presentation/widgets/widgets.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      body: discoverProvider.initialLoading
          ? const Center(
              child: CircularProgressIndicator.adaptive(strokeWidth: 2),
            )
          : VideoScrollableView(videos: discoverProvider.videos),
    );
  }
}
