import 'package:flutter/material.dart';
import 'package:fsc_music_app/components/card_component.dart';
import 'package:fsc_music_app/ui/text.dart';
import 'package:fsc_music_app/ui/url.dart';

class Moods extends StatelessWidget {
  const Moods({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        CardComponent(
          title: moods,
          url: moodPhoto,
        ),
        CardComponent(
          title: moods2,
          url: moodPhoto2,
        ),
        CardComponent(
          title: moods3,
          url: moodPhoto3,
        ),
        CardComponent(
          title: moods4,
          url: moodPhoto4, //TODO:Json
        ),
      ],
    );
  }
}
