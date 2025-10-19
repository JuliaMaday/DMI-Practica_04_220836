import 'package:flutter/material.dart';
import 'package:widget_app_220836/presentation/providers/discover_provider.dart';
import 'package:provider/provider.dart'; 

class DiscoverScreen extends StatelessWidget {                                       
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>(); 

    return Scaffold(
      body: discoverProvider.initialLoading 
          ? const Center(child: CircularProgressIndicator(strokeWidth: 2))
          : const Placeholder(),
    );
  }
}
