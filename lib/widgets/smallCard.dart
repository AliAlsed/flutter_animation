import 'package:animations/animations.dart';
import 'package:anime_test/widgets/openContainer.dart';
import 'package:anime_test/widgets/smallerCard.dart';
import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({
    Key key,
    @required ContainerTransitionType transitionType,
  })  : _transitionType = transitionType,
        super(key: key);

  final ContainerTransitionType _transitionType;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OpenContainerWrapper(
        transitionType: _transitionType,
        closedBuilder: (BuildContext _, VoidCallback openContainer) {
          return SmallerCard(
            openContainer: openContainer,
            subtitle: 'Secondary',
          );
        },
      ),
    );
  }
}
