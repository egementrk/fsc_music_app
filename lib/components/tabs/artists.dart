import 'package:flutter/material.dart';
import 'package:fsc_music_app/components/card_component.dart';
import 'package:fsc_music_app/ui/text.dart';
import 'package:fsc_music_app/ui/url.dart';

class Artists extends StatelessWidget {
  const Artists({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        CardComponent(
          title: artists,
          url: artistPhoto,
        ),
        CardComponent(
          title: artists2,
          url: artistPhoto2,
        ),
        CardComponent(
          title: artists3,
          url: artistPhoto3,
        ),
        CardComponent(
          title: artists4,
          url: artistPhoto4,
        ),
      ],
    );
  }
}
