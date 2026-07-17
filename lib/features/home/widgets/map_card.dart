import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class MapCard extends StatelessWidget {
  const MapCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        height: 110,
        width: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/map_nefertiti.png',
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(color: kCard),
            ),
            Container(color: Colors.black.withOpacity(0.55)),
          ],
        ),
      ),
    );
  }
}
