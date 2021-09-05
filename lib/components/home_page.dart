import 'package:flutter/material.dart';
import 'package:fsc_music_app/components/model/album_card.dart';
import 'package:fsc_music_app/components/model/list_card.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff192134),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        print("pressed to menu button");
                      },
                      color: Colors.white,
                      icon: Icon(Icons.menu)),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.white60),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        print("pressed to menu button");
                      },
                      color: Colors.white,
                      icon: Icon(Icons.person)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Recommended Albums",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return ListCard(
                          title: "A7X",
                          subtitle: "Nightmare",
                          imgurl: "https://pbs.twimg.com/media/DnjOXc4XcAUc-5a.jpg:large",
                        );
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Albums",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View All",
                      style: TextStyle(color: Colors.red),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Container(
                  height: 300,
                  width: 500,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AlbumCard(
                            title: "Metallica",
                            subtitle: "Death Magnetic",
                            imgurl: "https://upload.wikimedia.org/wikipedia/tr/0/09/Metallica_Death_Magnetic.jpg",
                          ),
                          AlbumCard(
                            title: "Megadeth",
                            subtitle: "Rust in Peace",
                            imgurl: "https://upload.wikimedia.org/wikipedia/tr/b/bb/Rust_in_Peace.jpg",
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AlbumCard(
                            title: "Ghost",
                            subtitle: "Meliora",
                            imgurl: "https://137401-397761-2-raikfcquaxqncofqfm.stackpathdns.com/664-home_default/Ghost-Meliora-Plak.jpg",
                          ),
                          AlbumCard(
                            title: "Nirvana",
                            subtitle: "In Utero",
                            imgurl: "https://upload.wikimedia.org/wikipedia/tr/c/cc/In_utero_album_kapak_.jpg",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
