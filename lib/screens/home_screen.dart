import 'package:flutter/material.dart';

import 'package:flutter_animations/utils/device_dimensions.dart';
import 'package:flutter_animations/widgets/title_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = DeviceDimensions.deviceWidth(context);
    // final screenHeight = DeviceDimensions.deviceHeight(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterFX'),
      ),
      body: SafeArea(
        child: SizedBox(
          width: screenWidth,
          child: const Column(
            children: [
              TitleCard(
                title: 'Implicit Animations',
                color: Colors.green,
                route: 'implicit',
              ),
              SizedBox(
                height: 10,
              ),
              TitleCard(
                title: 'Tween Animations',
                color: Colors.blueGrey,
                route: 'tween',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
