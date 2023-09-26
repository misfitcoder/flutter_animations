import 'package:flutter/material.dart';

class ColorTweenAnimation extends StatefulWidget {
  const ColorTweenAnimation({super.key});

  @override
  State<ColorTweenAnimation> createState() => _ColorTweenAnimationState();
}

class _ColorTweenAnimationState extends State<ColorTweenAnimation> {
  final Color _startColor = Colors.black87; // Initial color
  Color _endColor = Colors.teal; // Final color

  void _toggleColors() {
    setState(() {
      _endColor = _endColor == Colors.teal ? Colors.purple : Colors.teal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Tween'),
      ),
      body: GestureDetector(
        onTap: _toggleColors,
        child: Center(
          child: TweenAnimationBuilder<Color?>(
              tween: ColorTween(begin: _startColor, end: _endColor),
              duration: const Duration(seconds: 1),
              builder: (context, color, child) {
                return Container(
                  width: 200,
                  height: 200,
                  color: color,
                );
              }),
        ),
      ),
    );
  }
}
