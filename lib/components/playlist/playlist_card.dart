import 'package:flutter/material.dart';
import 'package:fsc_music_app/components/context_extension.dart';
import 'package:fsc_music_app/ui/color.dart';
import 'package:fsc_music_app/ui/text.dart';

class PlaylistCard extends StatelessWidget {
  final String title, subtitle;
  const PlaylistCard({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: Padding(
        padding: context.paddingLow,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.playlist_play),
            ),
            SizedBox(
              width: context.widthLow,
            ),
            Column(
              children: [
                Text(title),
                SizedBox(height: context.heightLow),
                Text(
                  subtitle,
                  style: TextStyle(color: cardSubtitleColor),
                ),
              ],
            ),
            Spacer(),
            Text(playlistLength),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border),
            ),
          ],
        ),
      ),
    );
  }
}
