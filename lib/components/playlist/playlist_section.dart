import 'package:flutter/material.dart';
import 'package:fsc_music_app/components/context_extension.dart';
import 'package:fsc_music_app/components/playlist/playlist_card.dart';

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
                    child: Text("PLAYLISTS"),
                  ),
                  Spacer(),
                ],
              ),
              //TODO: ListView
              PlaylistCard(
                title: 'RoadTrip',
                subtitle: 'For Motorcycle',
              ),
              PlaylistCard(
                title: 'RoadTrip',
                subtitle: 'For Motorcycle',
              ),
            ],
          ),
        ));
  }
}
