import 'package:flutter/material.dart';

class VisibilityAnimation extends StatefulWidget {
  const VisibilityAnimation({super.key});

  @override
  State<VisibilityAnimation> createState() => _VisibilityAnimationState();
}

class _VisibilityAnimationState extends State<VisibilityAnimation> {
  bool isVisible = false;
  final GlobalKey globalKey = GlobalKey();

  void toggleVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visibility Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedSwitcher(
              duration: const Duration(seconds: 2),
              transitionBuilder: (child, animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              child: isVisible
                  ? Container(
                      key: globalKey,
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: toggleVisibility,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontWeight: FontWeight.bold),
                minimumSize: const Size(120, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: isVisible ? const Text('Hide') : const Text('Show'),
            ),
          ],
        ),
      ),
    );
  }
}
