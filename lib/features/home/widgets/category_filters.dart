import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CategoryFilters extends StatelessWidget {
  final List<String> categories;
  final String selectedCategory;
  final Function(String) onCategorySelected;

  const CategoryFilters({
    super.key,
    required this.categories,
    required this.selectedCategory,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double totalWidth = constraints.maxWidth;
        const int visible = 3;
        const double spacing = 12;

        final double itemWidth =
            (totalWidth - (visible - 1) * spacing) / visible;

        return SizedBox(
          height: 40,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: List.generate(categories.length, (index) {
                final category = categories[index];
                final bool isSelected = selectedCategory == category;

                return Padding(
                  padding: EdgeInsets.only(
                    right: index == categories.length - 1 ? 0 : spacing,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      onCategorySelected(category);
                    },
                    child: SizedBox(
                      width: itemWidth,
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: isSelected ? kSelectedGold : Colors.black,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: isSelected ? kSelectedGold : kSearchBorder,
                          ),
                        ),
                        child: Text(
                          category,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.8,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        );
      },
    );
  }
}
