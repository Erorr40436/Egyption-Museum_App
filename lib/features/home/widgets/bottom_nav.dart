import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class BottomNav extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const BottomNav({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: Container(
          height: 68,
          decoration: BoxDecoration(
            color: kNavBg,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.38),
                blurRadius: 10,
                offset: const Offset(0, -3),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(child: _navItem(Icons.home_filled, 'Home', 0)),
              Expanded(child: _navItem(Icons.favorite, 'Favourite', 1)),
              Expanded(child: _navItem(Icons.person_outline, 'Profile', 2)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: selectedIndex == index ? kGold : Colors.white,
              size: 22,
            ),
            const SizedBox(height: 1),
            const Text(''),
            Text(
              label,
              style: const TextStyle(color: Colors.white70, fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }
}
