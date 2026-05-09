import 'package:flutter/material.dart';
import 'ui/dashboard_screen.dart';

void main() {
  runApp(const KoreanLearningApp());
}

class KoreanLearningApp extends StatelessWidget {
  const KoreanLearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Korean',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardScreen(),
      },
    );
  }
}
