import 'package:flutter/material.dart';
import 'package:museum/core/constants/app_fonts.dart';

class CustomSancruaryCard extends StatelessWidget {
  const CustomSancruaryCard({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 151,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff201F1F),
        border: Border(
          left: BorderSide(
            width: 2,
            color: Color(0xffF2CA50).withValues(alpha: 0.4),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: AppFonts.libration,
                fontSize: 18,

                fontWeight: FontWeight.w400,
                color: Color(0xffE5E2E1),
              ),
            ),
            SizedBox(height: 7),
            Text(
              subtitle,
              style: TextStyle(
                fontFamily: AppFonts.lnter,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xffD0C5AF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
