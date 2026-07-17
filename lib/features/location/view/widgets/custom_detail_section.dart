import 'package:flutter/material.dart';
import 'package:museum/core/constants/app_fonts.dart';

class CustomDetailSection extends StatelessWidget {
  const CustomDetailSection({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subtitle,
  });
  final String iconPath;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: .start,
      children: [
        Image.asset(iconPath, height: 16.5, width: 16.5, fit: .cover),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              title.toUpperCase(),
              style: TextStyle(
                fontFamily: AppFonts.lnter,
                fontSize: 12,
                letterSpacing: 1.2,
                fontWeight: FontWeight.w400,
                color: Color(0xffE5E2E1).withValues(alpha: 0.4),
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontFamily: AppFonts.lnter,
                fontSize: 14,

                fontWeight: FontWeight.w400,
                color: Color(0xffE5E2E1),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
