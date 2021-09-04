import 'package:flutter/material.dart';
import 'package:fsc_music_app/components/home_page.dart';
import 'package:fsc_music_app/components/onboarding/onboarding_main.dart';
import 'package:fsc_music_app/components/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "/onboard": (context) => OnboardingMain(),
        "/main": (context) => HomePage(),
      },
      // home: SplashScreen(),
    );
  }
}
