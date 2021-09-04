import 'package:flutter/material.dart';
import 'package:fsc_music_app/components/home_page.dart';
import 'package:fsc_music_app/components/onboarding/onboarding_pages.dart';
import 'package:fsc_music_app/main.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        done: Text('Done'),
        onDone: () {
          Navigator.of(context).pushNamedAndRemoveUntil('/main', (Route<dynamic> route) => false);
          // Navigator.of(context).popUntil(ModalRoute.withName('/main'));
        },
        pages: getPages(),
        showNextButton: false,
      ),
    );
  }
}
