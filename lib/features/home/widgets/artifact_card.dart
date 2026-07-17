import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../models/artifact.dart';
import '../screens/artifact_detail_screen.dart';

class ArtifactCard extends StatelessWidget {
  final Artifact artifact;

  const ArtifactCard({super.key, required this.artifact});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ArtifactDetailScreen(artifact: artifact),
          ),
        );
      },
      child: Container(
        decoration: const BoxDecoration(color: Colors.transparent),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      artifact.imagePath,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(
                        color: kBadgeBg,
                        child: const Center(
                          child: Icon(Icons.image, color: kGold, size: 36),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 12,
                      left: 12,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: kSelectedGold,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          artifact.category,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                            letterSpacing: 0.6,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(8, 16, 8, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    artifact.title,
                    style: const TextStyle(
                      color: kTitleColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    artifact.location.toUpperCase(),
                    style: const TextStyle(
                      color: kSubtitleMuted,
                      fontSize: 9,
                      height: 1.2,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
