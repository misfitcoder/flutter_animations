import 'package:flutter/material.dart';

class PositionTweenAnimation extends StatefulWidget {
  const PositionTweenAnimation({super.key});

  @override
  State<PositionTweenAnimation> createState() => _PositionTweenAnimationState();
}

class _PositionTweenAnimationState extends State<PositionTweenAnimation> {
  double xPosition = 0.0;

  void moveHorizontally() {
    setState(() {
      xPosition = xPosition == 0.0 ? 100.0 : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Position Tween'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TweenAnimationBuilder(
              tween: Tween<Offset>(
                begin: const Offset(0.0, 0.0),
                end: Offset(xPosition, 0.0),
              ),
              duration: const Duration(seconds: 1),
              builder: (_, offset, child) {
                return Transform.translate(
                  offset: offset,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: moveHorizontally,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontWeight: FontWeight.bold),
                minimumSize: const Size(120, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text('Move Horizontally'),
            ),
          ],
        ),
      ),
    );
  }
}
