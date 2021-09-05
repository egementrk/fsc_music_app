import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  final String title, subtitle, imgurl;

  const AlbumCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imgurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 125,
            width: 125,
            child: Image.network(imgurl),
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            subtitle,
            style: TextStyle(color: Colors.white60),
          ),
        ],
      ),
    );
  }
}
