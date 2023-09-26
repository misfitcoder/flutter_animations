import 'package:flutter/material.dart';

import 'package:flutter_animations/widgets/tween_item.dart';

class TweenAnimation extends StatelessWidget {
  const TweenAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tween Animations'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 2 / 2.5,
        padding: const EdgeInsets.all(8.0),
        children: const [
          TweenItem(
            title: 'Position Tween',
            route: 'position',
          ),
          TweenItem(
            title: 'Size Tween',
            route: 'size-tween',
          ),
          TweenItem(
            title: 'Color Tween',
            route: 'color',
          ),
        ],
      ),
    );
  }
}
