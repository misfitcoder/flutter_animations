import 'package:flutter/material.dart';

class SizeTweenAnimation extends StatefulWidget {
  const SizeTweenAnimation({super.key});

  @override
  State<SizeTweenAnimation> createState() => _SizeTweenAnimationState();
}

class _SizeTweenAnimationState extends State<SizeTweenAnimation> {
  double width = 200.0;
  double height = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Size Tween'),
      ),
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(
            begin: 0.0,
            end: 1.0,
          ),
          duration: const Duration(seconds: 1),
          builder: (context, value, child) {
            final currentWidth = width * value;
            final currentHeight = height * value;

            return Container(
              width: currentWidth,
              height: currentHeight,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(10),
              ),
            );
          },
        ),
      ),
    );
  }
}
