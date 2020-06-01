import 'package:anime_test/widgets/ink.dart';
import 'package:flutter/material.dart';

class SmallerCard extends StatelessWidget {
  const SmallerCard(
      {this.openContainer, this.subtitle, this.image, this.title});

  final VoidCallback openContainer;
  final String subtitle;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWellOverlay(
      openContainer: openContainer,
      height: 225,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.black38,
            height: 150,
            child: Center(
              child: Image.asset(
                image,
                width: 80,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
