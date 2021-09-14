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
                    child: Text(
                      "PLAYLISTS",
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
                    PlaylistCard(title: "Nirvana", subtitle: "The Best of Nirvana"),
                    PlaylistCard(title: "Motörhead", subtitle: "RIP Lemmy"),
                    PlaylistCard(title: "Lorem Ipsum", subtitle: "dolor sit amet"),
                    PlaylistCard(title: "Lorem Ipsum", subtitle: "dolor sit amet"),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

              // // TODO: ListView
              // PlaylistCard(
              //   title: 'RoadTrip',
              //   subtitle: 'For Motorcycle',
              // ),
              // PlaylistCard(
              //   title: 'RoadTrip',
              //   subtitle: 'For Motorcycle',
              // ),