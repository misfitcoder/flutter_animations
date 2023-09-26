import 'package:flutter/material.dart';

class ScaleTweenAnimation extends StatefulWidget {
  const ScaleTweenAnimation({super.key});

  @override
  State<ScaleTweenAnimation> createState() => _ScaleTweenAnimationState();
}

class _ScaleTweenAnimationState extends State<ScaleTweenAnimation> {
  final double _initialScale = 5.0;
  final double _finalScale = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scale Tween'),
      ),
      body: Center(
        child: TweenAnimationBuilder<double>(
          duration: const Duration(seconds: 1),
          tween: Tween<double>(begin: _initialScale, end: _finalScale),
          builder: (context, scale, child) {
            return Transform.scale(
              scale: scale,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.teal,
              ),
            );
          },
        ),
      ),
    );
  }
}
