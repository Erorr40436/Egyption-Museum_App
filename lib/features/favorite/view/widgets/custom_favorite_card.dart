import 'package:flutter/material.dart';
import 'package:museum/core/constants/app_assets.dart';
import 'package:museum/core/constants/app_fonts.dart';
import 'package:museum/core/style/app_colors.dart';

class CustomFavoriteCard extends StatelessWidget {
  const CustomFavoriteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 164,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.bcgFavCardColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 16,
              right: 8,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: AppColors.gold50,
                  size: 24,
                ),
              ),
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.horizontal(
                    left: Radius.circular(24),
                  ),
                  child: Image.asset(
                    AppAssets.nefertiti,
                    width: 117,
                    height: 164,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        'Amarna Period',
                        style: TextStyle(
                          color: AppColors.gold50,
                          fontFamily: AppFonts.lnter,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Bust of Nefertiti',
                        style: TextStyle(
                          color: Color(0xffE5E2E1),
                          fontFamily: AppFonts.noto,
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'A masterpiece of ancient realism\n depictingthe Great Royal\n Wife of Akhenaten.',
                        maxLines: 3,
    
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Color(0xffD0C5AF),
                          fontFamily: AppFonts.lnter,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
