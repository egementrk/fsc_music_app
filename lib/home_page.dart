import 'package:fsc_music_app/components/playlist/playlist_section.dart';
import 'package:fsc_music_app/components/tabs/artists.dart';
import 'package:fsc_music_app/components/tabs/moods.dart';
import 'package:fsc_music_app/components/tabs/tabs.dart';
import 'package:fsc_music_app/ui/color.dart';
import 'package:fsc_music_app/ui/text.dart';
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
            backgroundColor: appBarColor,
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.manage_search,
                color: themeDataColor,
              ),
              onPressed: () => {},
            ),
            title: Text(
              appBarTitle,
              style: TextStyle(
                color: themeDataColor,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
                color: themeDataColor,
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
