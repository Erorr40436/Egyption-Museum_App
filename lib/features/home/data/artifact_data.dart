import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../models/artifact.dart';

final List<Artifact> allArtifacts = [
  Artifact(
    title: 'Gold Mask of Tutankhamun',
    category: 'DYNASTY XVIII',
    location: 'FUNERARY ART • VALLEY OF THE KINGS',
    imagePath: 'assets/images/tutankhamun.png',
  ),
  Artifact(
    title: 'Pectoral of Senusret II',
    category: 'JEWELRY',
    location: 'ROYAL ORNAMENT • LAHUN',
    imagePath: 'assets/images/pectoral.png',
  ),
  Artifact(
    title: 'Sarcophagus',
    category: 'STATUES',
    location: 'VALLEY OF THE KINGS',
    imagePath: 'assets/images/sarcophagus.png',
  ),
  Artifact(
    title: 'Mummy',
    category: 'MUMMIES',
    location: 'EGYPTIAN MUSEUM',
    imagePath: 'assets/images/mummy.png',
  ),
  // ← زود هنا براحتك
];
