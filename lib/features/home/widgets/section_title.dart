import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: kGold,
        fontSize: 17,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.8,
      ),
    );
  }
}
