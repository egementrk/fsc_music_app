import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:fsc_music_app/components/context_extension.dart';

class Tabs extends StatelessWidget {
  const Tabs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: context.paddingLow,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Browse",
                  style: TextStyle(
                    color: Color(0xff283748),
                    fontSize: context.heightMedium,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText('Hello',
                        textStyle: TextStyle(
                          color: Color(0xff283748),
                        )),
                    WavyAnimatedText('Guys',
                        textStyle: TextStyle(
                          color: Color(0xff283748),
                        )),
                    WavyAnimatedText('Egemen',
                        textStyle: TextStyle(
                          color: Color(0xff283748),
                        )),
                  ],
                  isRepeatingAnimation: true,
                ),
              ],
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
                text: "PODCASTS", //TODO:Songs
              )
            ],
          ),
        ],
      ),
    );
  }
}
