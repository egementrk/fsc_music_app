import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Browse"),
          TabBar(tabs: [
            Tab(
              text: "MOODS",
            ),
            Tab(
              text: "ARTISTS",
            ),
            Tab(
              text: "PODCASTS",
            )
          ]),
        ],
      ),
    );
  }
}
