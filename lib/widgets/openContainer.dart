import 'package:animations/animations.dart';
import 'package:anime_test/pages/detail.dart';
import 'package:flutter/material.dart';

class OpenContainerWrapper extends StatelessWidget {
  const OpenContainerWrapper(
      {this.closedBuilder, this.transitionType, this.page});

  final Widget page;

  final OpenContainerBuilder closedBuilder;
  final ContainerTransitionType transitionType;

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionType: transitionType,
      openBuilder: (BuildContext context, VoidCallback _) {
        return page;
      },
      tappable: false,
      closedBuilder: closedBuilder,
    );
  }
}
