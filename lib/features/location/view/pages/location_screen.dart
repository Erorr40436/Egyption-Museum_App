import 'package:flutter/material.dart';
import 'package:museum/core/constants/app_assets.dart';
import 'package:museum/core/constants/app_fonts.dart';
import 'package:museum/core/style/app_colors.dart';
import 'package:museum/features/location/view/widgets/custom_button.dart';
import 'package:museum/features/location/view/widgets/custom_detail_section.dart';
import 'package:museum/features/location/view/widgets/custom_sancruary_card.dart';
import 'package:museum/main.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: .start,
          mainAxisAlignment: .start,
          children: [
            SizedBox(height: 47),
            Text(
              'Plan Your Visit',
              style: TextStyle(
                fontFamily: AppFonts.lnter,
                fontSize: 12,
                letterSpacing: 2.4,
                fontWeight: FontWeight.w700,
                color: AppColors.gold50,
              ),
            ),
            SizedBox(height: 17),
            Text(
              'FIND THE\nSACRED\nHALLS',
              style: TextStyle(
                fontFamily: AppFonts.noto,
                fontSize: 48,
                letterSpacing: -1.2,
    
                fontWeight: FontWeight.w700,
                color: AppColors.gold50,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Located in the heart of Tahrir Square,Cairo, the Egyptian Museum stands as atestament to five millennia ofcivilization. Secure your passage to theancient world.',
              style: TextStyle(
                fontFamily: AppFonts.lnter,
                fontSize: 19,
                fontWeight: FontWeight.w400,
                color: Color(0xffD0C5AF),
              ),
            ),
            SizedBox(height: 48),
            Align(
              alignment: .centerRight,
              child: Column(
                crossAxisAlignment: .end,
                children: [
                  Text(
                    'Tahrir Square',
                    style: TextStyle(
                      fontFamily: AppFonts.libration,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: AppColors.gold50,
                    ),
                  ),
                  Text(
                    'Tahrir Square',
                    style: TextStyle(
                      fontFamily: AppFonts.lnter,
                      fontSize: 14,
                      letterSpacing: 1.4,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffE5E2E1).withValues(alpha: 0.6),
                    ),
                  ),
                  SizedBox(height: 64),
                  Image.asset(
                    AppAssets.location,
                    height: 600,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 440,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Color(0xff1C1B1B)),
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Image.asset(
                            AppAssets.direction,
                            height: 30,
                            width: 30,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 24),
                          Text(
                            'Entry Protocol',
                            style: TextStyle(
                              fontFamily: AppFonts.noto,
                              fontSize: 24,
    
                              fontWeight: FontWeight.w400,
                              color: AppColors.gold50,
                            ),
                          ),
                          SizedBox(height: 24),
                          CustomDetailSection(
                            iconPath: AppAssets.time,
                            title: 'Opening Hours',
                            subtitle: '09:00 AM — 05:00 PM',
                          ),
                          SizedBox(height: 24),
                          CustomDetailSection(
                            iconPath: AppAssets.metro,
                            title: 'Metro Access',
                            subtitle: 'Sadat Station (Tahrir)',
                          ),
                          SizedBox(height: 24),
                          CustomDetailSection(
                            iconPath: AppAssets.parking,
                            title: 'Valet Parking',
                            subtitle: 'Available at North Gate',
                          ),
                          SizedBox(height: 48),
                          CustomButton(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 78),
                  Align(
                    alignment: .centerStart,
                    child: Text(
                      'Nearby Sanctuaries',
                      style: TextStyle(
                        fontFamily: AppFonts.noto,
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: AppColors.gold50,
                      ),
                    ),
                  ),
                  SizedBox(height: 49),
                  CustomSancruaryCard(
                    title: 'Tahrir Square',
                    subtitle:
                        'The historic center of modern Cairo, located directly in front of the museums primary facade',
                  ),
                  SizedBox(height: 32),
                  CustomSancruaryCard(
                    title: 'The Nile Corniche',
                    subtitle:
                        'A scenic 5-minute walk leads to the eternal banks of the Nile, offering evening felucca cruises.',
                  ),
                  SizedBox(height: 32),
                  CustomSancruaryCard(
                    title: 'Grand Egyptian Museum',
                    subtitle:
                        'Shuttle services are available hourly between Tahrir and the new Giza plateau site.',
                  ),
                  SizedBox(height: 32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
