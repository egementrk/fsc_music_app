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
        accentColor: Color(0xff283748),
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
