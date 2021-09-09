import 'package:flutter/material.dart';
import 'package:fsc_music_app/components/card_component.dart';

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
          title: "90's",
          url: "https://wallpapercave.com/wp/Y7A7bLS.jpg",
        ),
        CardComponent(
          title: "Buckethead",
          url: "https://wallpapercave.com/wp/Xi4vxJv.jpg",
        ),
        CardComponent(
          title: "Thrash Metal",
          url: "https://wallpapercave.com/wp/wp2724648.jpg",
        ),
        CardComponent(
          title: "Blues",
          url: "https://wallpapercave.com/wp/JqrfgaT.jpg",
        ),
      ],
    );
  }
}
