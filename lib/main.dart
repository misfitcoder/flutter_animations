import 'package:flutter/material.dart';

import 'package:flutter_animations/screens/home_screen.dart';
import 'package:flutter_animations/screens/implicit-animations/crossfade_animation.dart';
import 'package:flutter_animations/screens/implicit-animations/opacity_animation.dart';
import 'package:flutter_animations/screens/implicit-animations/size_animation.dart';
import 'package:flutter_animations/screens/implicit-animations/visibility_animation.dart';
import 'package:flutter_animations/screens/implicit_animations.dart';
import 'package:flutter_animations/screens/tween-animations/color_tween.dart';
import 'package:flutter_animations/screens/tween-animations/position_tween.dart';
import 'package:flutter_animations/screens/tween-animations/size_tween.dart';
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
        'opacity': (context) => const OpacityAnimation(),
        'size': (context) => const SizeAnimation(),
        'crossfade': (context) => const CrossFadeAnimation(),
        'visibility': (context) => const VisibilityAnimation(),
        'position': (context) => const PositionTweenAnimation(),
        'size-tween': (context) => const SizeTweenAnimation(),
        'color': (context) => const ColorTweenAnimation(),
      },
      home: const HomeScreen(),
    );
  }
}
