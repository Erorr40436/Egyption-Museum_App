import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: kSearchBorder, width: 1),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Icon(Icons.search, color: kSearchBorder, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.95),
                fontSize: 14,
              ),
              cursorColor: kSearchBorder,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.white.withValues(alpha: 0.6),
                  fontSize: 13,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
