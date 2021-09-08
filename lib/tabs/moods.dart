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
          title: "Card 1",
          url: "https://i.pinimg.com/originals/82/53/c4/8253c42a47180ca45c2b8e5d3905731a.png",
        ),
        CardComponent(
          title: "Card 2",
          url: "https://i.pinimg.com/originals/82/53/c4/8253c42a47180ca45c2b8e5d3905731a.png",
        ),
        CardComponent(
          title: "Card 3",
          url: "https://i.pinimg.com/originals/82/53/c4/8253c42a47180ca45c2b8e5d3905731a.png",
        ),
      ],
    );
  }
}
