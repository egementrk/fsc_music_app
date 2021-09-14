import 'package:fsc_music_app/components/playlist/playlist_section.dart';
import 'package:fsc_music_app/tabs/artists.dart';
import 'package:fsc_music_app/tabs/moods.dart';
import 'package:fsc_music_app/tabs/tabs.dart';

import 'components/context_extension.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffe8e9ed),
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.manage_search,
                color: Color(0xff283748),
              ),
              onPressed: () => {},
            ),
            title: Text(
              "FSC MUSIC APP",
              style: TextStyle(
                color: Color(0xff283748),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
                color: Color(0xff283748),
              ),
            ],
            // flexibleSpace: SizedBox(
            //   height: 12,
            // ),
            bottom: PreferredSize(
              child: Tabs(),
              preferredSize: Size.fromHeight(context.height * 0.15),
            ),
          ),
          body: Container(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      Moods(),
                      Artists(),
                      Icon(Icons.directions_bike),
                    ],
                  ),
                ),
                PlaylistSection()
              ],
            ),
          )),
    );
  }
}
