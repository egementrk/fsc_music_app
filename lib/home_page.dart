import 'package:fsc_music_app/tabs/moods.dart';
import 'package:fsc_music_app/tabs/tabs.dart';

import 'components/context_extension.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.manage_search, color: Colors.black),
              onPressed: () => {},
            ),
            title: Text("data"),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit)),
            ],
            flexibleSpace: SizedBox(
              height: 12,
            ),
            bottom: PreferredSize(
              child: Tabs(),
              preferredSize: Size.fromHeight(context.height * 0.20),
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
                      Icon(Icons.directions_transit),
                      Icon(Icons.directions_bike),
                    ],
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.black12,
                      child: Text("I'm Playlist section"),
                    ))
              ],
            ),
          )),
    );
  }
}
