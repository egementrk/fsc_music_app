import 'package:flutter/material.dart';
import 'package:fsc_music_app/components/context_extension.dart';

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
      child: Padding(
        padding: context.paddingLow,
        child: Row(
          children: [
            Icon(Icons.music_note),
            SizedBox(
              width: context.widthLow,
            ),
            Column(
              children: [
                Text(title),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
            Spacer(),
            Text("Minute"),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.redeem),
            ),
          ],
        ),
      ),
    );
  }
}
