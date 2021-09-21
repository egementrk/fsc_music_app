import 'package:flutter/material.dart';
import 'package:fsc_music_app/components/card_component.dart';

class Artists extends StatelessWidget {
  const Artists({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        CardComponent(
          title: "The White Buffalo",
          url: "https://thewhitebuffalo.com/wp-content/gallery/live-photos/IMG_9266.jpg",
        ),
        CardComponent(
          title: "Buckethead",
          url: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Bucketheadgnr.jpg/450px-Bucketheadgnr.jpg",
        ),
        CardComponent(
          title: "Megadeth",
          url: "https://megadeth.com/wp-content/uploads/photos/20170314_155912_10330_974436.jpeg",
        ),
        CardComponent(
          title: "Queen",
          url: "https://www.queenonline.com/global/assets/modules/site/images/gallery/1981_002.jpg",
        ),
      ],
    );
  }
}
