import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_app_220836/presentation/providers/discover_provider.dart';
import 'package:widget_app_220836/presentation/screens/discover/discover_screen.dart';
import 'package:widget_app_220836/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[ChangeNotifierProvider(create: (_) => DiscoverProvider()..
      loadNextPage()),],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor:5).getTheme(),
      home: const DiscoverScreen(),
    ),
    );
  }
}
