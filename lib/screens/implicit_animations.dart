import 'package:flutter/material.dart';
import 'package:flutter_animations/widgets/implicit_item.dart';

class ImplicitAnimations extends StatelessWidget {
  const ImplicitAnimations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Implicit Animations'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 2 / 2.5,
        padding: const EdgeInsets.all(8.0),
        children: const [
          ImplicitItem(
            title: 'Opacity Animation',
            route: 'opacity',
          ),
          ImplicitItem(
            title: 'Size Animation',
            route: 'size',
          ),
          ImplicitItem(
            title: 'Cross-fade Animation',
            route: 'crossfade',
          ),
          ImplicitItem(
            title: 'Visibility Animation',
            route: 'visibility',
          ),
        ],
      ),
    );
  }
}
