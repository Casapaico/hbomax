import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/theme.dart';
import 'core/router.dart';

void main() {
  runApp(const ProviderScope(child: HboMaxApp()));
}

class HboMaxApp extends StatelessWidget {
  const HboMaxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'HBO Max',
      debugShowCheckedModeBanner: false,
      theme: HboTheme.dark,
      routerConfig: appRouter,
    );
  }
}
