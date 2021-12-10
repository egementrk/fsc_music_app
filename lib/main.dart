import 'package:flutter/material.dart';
import 'package:fsc_music_app/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'QuickSand',
        // colorScheme: ColorScheme.fromSwatch().copyWith(
        //     primary: themeDataColor,
        //     secondary: themeDataColor,
        //     ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        // "/": (context) => SplashScreen(),
        // "/onboard": (context) => OnboardingMain(),
        "/home": (context) => HomePage(),
      },
      // home: SplashScreen(),
    );
  }
}
