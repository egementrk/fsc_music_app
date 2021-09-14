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
          title: "For Road",
          url:
              "https://images.unsplash.com/photo-1558980664-2506fca6bfc2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8Mjh8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        ),
        CardComponent(
          title: "Chill",
          url:
              "https://images.unsplash.com/photo-1515442261605-65987783cb6a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y29mZmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        ),
        CardComponent(
          title: "Coding",
          url:
              "https://images.unsplash.com/photo-1581472723648-909f4851d4ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80",
        ),
        CardComponent(
          title: "Workout",
          url:
              "https://images.unsplash.com/photo-1553689895-0caa4124e237?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTR8fGJhc2tldGJhbGx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", //TODO:Json
        ),
      ],
    );
  }
}
