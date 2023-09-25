import 'package:flutter/material.dart';

class CrossFadeAnimation extends StatefulWidget {
  const CrossFadeAnimation({super.key});

  @override
  State<CrossFadeAnimation> createState() => _CrossFadeAnimationState();
}

class _CrossFadeAnimationState extends State<CrossFadeAnimation> {
  bool isShowingBox = true;

  void toggleState() {
    setState(() {
      isShowingBox = !isShowingBox;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crossfade Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: toggleState,
              child: AnimatedCrossFade(
                sizeCurve: Curves.bounceOut,
                firstChild: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                secondChild: Container(
                  height: 250,
                  width: 250,
                  decoration: const BoxDecoration(
                      color: Colors.teal, shape: BoxShape.circle),
                ),
                crossFadeState: isShowingBox
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(seconds: 2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
