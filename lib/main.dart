import 'package:flutter/material.dart';

import 'package:flutter_animations/screens/home_screen.dart';
import 'package:flutter_animations/screens/implicit_animations.dart';
import 'package:flutter_animations/screens/tween_animations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterFX',
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        'implicit': (context) => const ImplicitAnimations(),
        'tween': (context) => const TweenAnimation(),
      },
      home: const HomeScreen(),
    );
  }
}
