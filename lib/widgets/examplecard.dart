import 'package:anime_test/widgets/ink.dart';
import 'package:flutter/material.dart';

class ExampleCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String body;
  const ExampleCard(
      {this.openContainer, this.image, this.title, this.subtitle, this.body});

  final VoidCallback openContainer;

  @override
  Widget build(BuildContext context) {
    return InkWellOverlay(
      openContainer: openContainer,
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
          ),
          ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 16.0,
            ),
            child: Text(
              body,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}
