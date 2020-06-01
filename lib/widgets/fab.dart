import 'package:animations/animations.dart';
import 'package:anime_test/pages/detail.dart';
import 'package:flutter/material.dart';

const double _fabDimension = 56.0;

class FabAnimate extends StatelessWidget {
  const FabAnimate({
    Key key,
    @required ContainerTransitionType transitionType,
  })  : _transitionType = transitionType,
        super(key: key);

  final ContainerTransitionType _transitionType;

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionType: _transitionType,
      openBuilder: (BuildContext context, VoidCallback _) {
        return DetailsPage();
      },
      closedElevation: 6.0,
      closedShape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(_fabDimension / 2),
        ),
      ),
      closedColor: Theme.of(context).colorScheme.secondary,
      closedBuilder: (BuildContext context, VoidCallback openContainer) {
        return SizedBox(
          height: _fabDimension,
          width: _fabDimension,
          child: Center(
            child: Icon(
              Icons.add,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          ),
        );
      },
    );
  }
}
