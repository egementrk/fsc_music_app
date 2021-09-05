import 'package:flutter/material.dart';
import 'package:fsc_music_app/components/onboarding/onboarding_pages.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IntroductionScreen(
            done: Text('Done'),
            onDone: () {
              Navigator.of(context).pushNamedAndRemoveUntil('/main', (Route<dynamic> route) => false);
            },
            pages: getPages(),
            showNextButton: false,
          ),
        ),
      ),
    );
  }
}
