import 'package:flutter/material.dart';
import 'package:flutter_animations/utils/device_dimensions.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    super.key,
    required this.title,
    required this.color,
    required this.route,
  });

  final String title;
  final String route;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final screenWidth = DeviceDimensions.deviceWidth(context);
    final screenHeight = DeviceDimensions.deviceHeight(context);
    return Container(
      width: screenWidth * 0.9,
      height: screenHeight * 0.25,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, route),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: color.withOpacity(0.6),
              elevation: 2.0,
              minimumSize: const Size(150, 40),
            ),
            child: const Text('Open'),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
