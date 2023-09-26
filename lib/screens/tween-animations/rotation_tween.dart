import 'dart:math';

import 'package:flutter/material.dart';

class RotaionTweenAnimation extends StatefulWidget {
  const RotaionTweenAnimation({super.key});

  @override
  State<RotaionTweenAnimation> createState() => _RotaionTweenAnimationState();
}

class _RotaionTweenAnimationState extends State<RotaionTweenAnimation> {
  final double _startAngle = 0;
  final double _finalAngle = 1 * pi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rotaion Tween'),
      ),
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: _startAngle, end: _finalAngle),
          duration: const Duration(seconds: 1),
          builder: (context, angle, child) {
            return Transform.rotate(
              angle: angle,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.teal,
              ),
            );
          },
        ),
      ),
    );
  }
}
