import 'package:flutter/material.dart';

class OpacityAnimation extends StatefulWidget {
  const OpacityAnimation({super.key});

  @override
  State<OpacityAnimation> createState() => _OpacityAnimationState();
}

class _OpacityAnimationState extends State<OpacityAnimation> {
  double opacityLevel = 0.0; // initial opacity value

  void toggleOpacityLevel() {
    setState(() {
      opacityLevel == 0 ? opacityLevel += 1 : opacityLevel = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opacity Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // AnimatedOpacity Widget is used to toggle with the opacity
            AnimatedOpacity(
              opacity: opacityLevel, // required
              duration: const Duration(seconds: 1), // required
              // The child of AnimatedOpacity actually fades in/out.
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: toggleOpacityLevel,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontWeight: FontWeight.bold),
                minimumSize: const Size(120, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: opacityLevel == 0
                  ? const Text('Fade In')
                  : const Text('Fade Out'),
            ),
          ],
        ),
      ),
    );
  }
}
