import 'package:animations/animations.dart';
import 'package:anime_test/widgets/openContainer.dart';
import 'package:anime_test/widgets/smallerCard.dart';
import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  final Widget page;
  final String title;
  final String subtitle;
  final String image;
  const SmallCard(
      {Key key,
      @required ContainerTransitionType transitionType,
      this.page,
      this.title,
      this.image,
      this.subtitle})
      : _transitionType = transitionType,
        super(key: key);

  final ContainerTransitionType _transitionType;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OpenContainerWrapper(
        page: page,
        transitionType: _transitionType,
        closedBuilder: (BuildContext _, VoidCallback openContainer) {
          return SmallerCard(
            openContainer: openContainer,
            subtitle: subtitle,
            image: image,
            title: title,
          );
        },
      ),
    );
  }
}
