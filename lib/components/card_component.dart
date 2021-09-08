import 'package:flutter/material.dart';
import 'package:fsc_music_app/components/context_extension.dart';

class CardComponent extends StatelessWidget {
  final String title, url;
  const CardComponent({
    Key? key,
    required this.title,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.cardPadding,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.network(url),
          Container(
            color: Colors.white.withOpacity(0.7),
            child: Text(title),
          ),
        ],
      ),
    );
  }
}
