/// FILE: lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'router/app_router.dart';

void main() {
  runApp(
    const ProviderScope(
      child: NajdaApp(),
    ),
  );
}

class NajdaApp extends StatelessWidget {
  const NajdaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Najda Web',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.grey[50],
      ),
      routerConfig: appRouter,
    );
  }
}
