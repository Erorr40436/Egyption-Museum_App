import 'package:flutter/material.dart';
import 'package:museum/features/favorite/view/pages/favorite_screen.dart';
import 'package:museum/features/location/view/pages/location_screen.dart';

import '../constants/app_colors.dart';
import '../data/artifact_data.dart';
import '../models/artifact.dart';

import '../widgets/search_bar.dart';
import '../widgets/section_title.dart';
import '../widgets/featured_card.dart';
import '../widgets/category_filters.dart';
import '../widgets/map_card.dart';
import '../widgets/artifact_card.dart';
import '../widgets/bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedCategory = 'ALL ARTIFACTS';
  int _selectedNavIndex = 0;

  final List<String> _categories = [
    'ALL ARTIFACTS',
    'DYNASTY XVIII',
    'STATUES',
    'JEWELRY',
    'MUMMIES',
  ];

  List<Artifact> get _filteredArtifacts {
    if (_selectedCategory == 'ALL ARTIFACTS') {
      return allArtifacts;
    }

    return allArtifacts.where((a) => a.category == _selectedCategory).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,

      bottomNavigationBar: BottomNav(
        selectedIndex: _selectedNavIndex,
        onTap: (index) {
          setState(() {
            _selectedNavIndex = index;
          });
        },
      ),

      body: SafeArea(child: LocationScreen()),
    );
  }
}
