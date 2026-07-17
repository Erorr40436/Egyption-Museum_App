import 'package:flutter/material.dart';
import 'package:museum/core/constants/app_fonts.dart';
import 'package:museum/core/functions/open_museum_location.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xffC5A028),
        minimumSize: Size(276, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),

      onPressed: openMuseumLocation,
      child: Row(
        mainAxisAlignment: .center,
        children: [
          Text(
            'Get Directions'.toUpperCase(),
            style: TextStyle(
              fontFamily: AppFonts.lnter,
              fontSize: 14,
              letterSpacing: 2.8,
              fontWeight: FontWeight.w700,
              color: Color(0xff3D2F00),
            ),
          ),
          SizedBox(width: 11),
          Icon(Icons.arrow_forward, color: Color(0xff3D2F00)),
        ],
      ),
    );
  }
}
