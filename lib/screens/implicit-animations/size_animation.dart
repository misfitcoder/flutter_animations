import 'dart:math';

import 'package:flutter/material.dart';

class SizeAnimation extends StatefulWidget {
  const SizeAnimation({super.key});

  @override
  State<SizeAnimation> createState() => _SizeAnimationState();
}

class _SizeAnimationState extends State<SizeAnimation> {
  double width = 250;
  double height = 250;

  void animateSize() {
    final random = Random().nextDouble();
    final newWidth = random * 250 + 100;
    final newHeight = random * 250 + 100;

    setState(() {
      width = newWidth;
      height = newHeight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Size Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: animateSize,
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                width: width,
                height: height,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(10),
                  // shape: BoxShape.circle,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
