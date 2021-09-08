import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Browse",
            style: TextStyle(
              color: Color(0xff283748),
              fontSize: 23,
            ),
          ),
          TabBar(
            labelColor: Color(0xff283748),
            tabs: [
              Tab(
                text: "MOODS",
              ),
              Tab(
                text: "ARTISTS",
              ),
              Tab(
                text: "PODCASTS",
              )
            ],
          ),
        ],
      ),
    );
  }
}
