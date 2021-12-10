import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:fsc_music_app/components/context_extension.dart';
import 'package:fsc_music_app/ui/color.dart';
import 'package:fsc_music_app/ui/text.dart';

class Tabs extends StatelessWidget {
  const Tabs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
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
                  browse,
                  style: TextStyle(
                    color: themeDataColor,
                    fontSize: context.heightMedium,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                      animatedText,
                      textStyle: TextStyle(
                        color: themeDataColor,
                      ),
                    ),
                    WavyAnimatedText(
                      animatedText2,
                      textStyle: TextStyle(
                        color: themeDataColor,
                      ),
                    ),
                    WavyAnimatedText(
                      animatedText3,
                      textStyle: TextStyle(
                        color: themeDataColor,
                      ),
                    ),
                  ],
                  isRepeatingAnimation: true,
                ),
              ],
            ),
          ),
          TabBar(
            labelColor: themeDataColor,
            tabs: [
              Tab(
                text: tab,
              ),
              Tab(
                text: tab2,
              ),
              Tab(
                text: tab3, //TODO:Songs
              )
            ],
          ),
        ],
      ),
    );
  }
}
