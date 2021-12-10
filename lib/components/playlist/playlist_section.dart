import 'package:flutter/material.dart';
import 'package:fsc_music_app/components/context_extension.dart';
import 'package:fsc_music_app/components/playlist/playlist_card.dart';
import 'package:fsc_music_app/ui/text.dart';

class PlaylistSection extends StatelessWidget {
  const PlaylistSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: context.paddingLow,
                    child: Text(
                      playlistHeader,
                      style: TextStyle(fontSize: context.heightMedium),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    PlaylistCard(title: playlistTitle, subtitle: playlistSubtitle),
                    PlaylistCard(title: playlistTitle2, subtitle: playlistSubtitle2),
                    PlaylistCard(title: playlistTitle3, subtitle: playlistSubtitle3),
                    PlaylistCard(title: playlistTitle4, subtitle: playlistSubtitle4),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
