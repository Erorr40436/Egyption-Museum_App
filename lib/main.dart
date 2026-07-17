import 'package:flutter/material.dart';

import 'features/home/constants/app_colors.dart';
import 'features/home/screens/home_screen.dart';

void main() {
  runApp(const EgyptianMuseumApp());
}

class EgyptianMuseumApp extends StatelessWidget {
  const EgyptianMuseumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Egyptian Museum',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackground,
        colorScheme: const ColorScheme.dark(primary: kGold),
        primaryColor: kGold,
        textTheme: ThemeData.dark().textTheme.apply(
          bodyColor: kTextLight,
          displayColor: kTextLight,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
