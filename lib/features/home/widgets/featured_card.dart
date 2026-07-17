import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class FeaturedCard extends StatelessWidget {
  const FeaturedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        height: 150,
        width: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/nefertiti.png',
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(color: kCard),
            ),

            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.88),
                    Colors.black.withOpacity(0.1),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
