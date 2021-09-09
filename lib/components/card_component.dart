import 'package:flutter/material.dart';
import 'package:fsc_music_app/components/context_extension.dart';

class CardComponent extends StatelessWidget {
  final String title, url;
  const CardComponent({
    Key? key,
    required this.title,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // Image.network(url),
            Ink.image(
              image: NetworkImage(url),
              fit: BoxFit.cover,
              height: context.height,
              width: context.width * 0.50,
              child: InkWell(
                onTap: () {},
              ),
            ),
            Positioned(
              width: context.width * 0.5,
              child: Container(
                color: Colors.white.withOpacity(0.9),
                child: Padding(
                  padding: context.paddingLow,
                  child: Center(child: Text(title)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
