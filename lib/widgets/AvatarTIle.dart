import 'package:animations/animations.dart';
import 'package:anime_test/pages/detail.dart';
import 'package:flutter/material.dart';

class AvatarTile extends StatelessWidget {
  final ContainerTransitionType transitionType;
  final int index;
  AvatarTile({Key key, @required this.transitionType, @required this.index});

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionType: transitionType,
      openBuilder: (BuildContext _, VoidCallback openContainer) {
        return DetailsPage();
      },
      tappable: false,
      closedShape: const RoundedRectangleBorder(),
      closedElevation: 0.0,
      closedBuilder: (BuildContext _, VoidCallback openContainer) {
        return ListTile(
          leading: Image.asset(
            'assets/avatar_logo.png',
            width: 40,
          ),
          onTap: openContainer,
          title: Text('List item ${index + 1}'),
          subtitle: const Text('Secondary text'),
        );
      },
    );
  }
}
