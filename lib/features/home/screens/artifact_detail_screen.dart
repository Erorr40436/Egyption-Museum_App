import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../models/artifact.dart';

class ArtifactDetailScreen extends StatelessWidget {
  final Artifact artifact;

  const ArtifactDetailScreen({super.key, required this.artifact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                Image.asset(
                  artifact.imagePath,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Container(
                    color: kCard,
                    child: const Center(
                      child: Icon(Icons.image, color: kGold, size: 80),
                    ),
                  ),
                ),
                Positioned(
                  top: 48,
                  left: 16,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.arrow_back, color: kGold),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 3,
            child: Container(
              color: kCard,
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    artifact.category,
                    style: TextStyle(
                      color: kGold,
                      fontSize: 11,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    artifact.title,
                    style: TextStyle(
                      color: kTextLight,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    artifact.location,
                    style: TextStyle(color: kTextMuted, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
