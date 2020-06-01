import 'package:anime_test/widgets/ink.dart';
import 'package:flutter/material.dart';

class ExampleSingleTile extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String body;
  const ExampleSingleTile(
      {this.openContainer, this.image, this.title, this.body, this.subtitle});

  final VoidCallback openContainer;

  @override
  Widget build(BuildContext context) {
    const double height = 100.0;

    return InkWellOverlay(
      openContainer: openContainer,
      height: height,
      child: Row(
        children: <Widget>[
          Container(
            height: height,
            width: height,
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(image))),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  const SizedBox(height: 8),
                  Text(subtitle, style: Theme.of(context).textTheme.caption),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
