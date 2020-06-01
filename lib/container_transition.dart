import 'package:anime_test/pages/detail.dart';
import 'package:anime_test/widgets/AvatarTIle.dart';
import 'package:anime_test/widgets/ListTileC.dart';
import 'package:anime_test/widgets/examplecard.dart';
import 'package:anime_test/widgets/fab.dart';
import 'package:anime_test/widgets/openContainer.dart';
import 'package:anime_test/widgets/smallCard.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

/// The demo page for [OpenContainerTransform].
class OpenContainerTransformDemo extends StatefulWidget {
  @override
  _OpenContainerTransformDemoState createState() {
    return _OpenContainerTransformDemoState();
  }
}

class _OpenContainerTransformDemoState
    extends State<OpenContainerTransformDemo> {
  ContainerTransitionType _transitionType = ContainerTransitionType.fade;

  void _showSettingsBottomModalSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
            return Container(
              height: 125,
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Fade mode',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  const SizedBox(height: 12),
                  ToggleButtons(
                    borderRadius: BorderRadius.circular(2.0),
                    selectedBorderColor: Theme.of(context).colorScheme.primary,
                    onPressed: (int index) {
                      setModalState(() {
                        setState(() {
                          _transitionType = index == 0
                              ? ContainerTransitionType.fade
                              : ContainerTransitionType.fadeThrough;
                        });
                      });
                    },
                    isSelected: <bool>[
                      _transitionType == ContainerTransitionType.fade,
                      _transitionType == ContainerTransitionType.fadeThrough,
                    ],
                    children: const <Widget>[
                      Text('FADE'),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('FADE THROUGH'),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container transform'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              _showSettingsBottomModalSheet(context);
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          OpenContainerWrapper(
            page: DetailsPage(
              title: 'japan',
              image: 'assets/img.jpeg',
              body: ' Asia ',
            ),
            transitionType: _transitionType,
            closedBuilder: (BuildContext _, VoidCallback openContainer) {
              return ExampleCard(
                openContainer: openContainer,
                title: 'japan',
                image: 'assets/img.jpeg',
                body:
                    'suspendisse in est. Ut ornare lectus sit amet. Eget nunc lobortis mattis '
                    'aliquam faucibus purus in. Hendrerit gravida rutrum quisque non tellus '
                    'orci ac auctor. Mattis aliquam faucibus purus in massa. Tellus rutrum ',
                subtitle: ' Asia ',
              );
            },
          ),
          const SizedBox(height: 16.0),
          OpenContainerWrapper(
            page: DetailsPage(
              title: 'japan',
              image: 'assets/img.jpeg',
              body: ' Asia ',
            ),
            transitionType: _transitionType,
            closedBuilder: (BuildContext _, VoidCallback openContainer) {
              return ExampleSingleTile(
                  title: 'japan',
                  image: 'assets/img.jpeg',
                  body: ' Asia ',
                  subtitle: ' Asia ',
                  openContainer: openContainer);
            },
          ),
          const SizedBox(height: 16.0),
          Row(
            children: <Widget>[
              SmallCard(
                image: 'assets/img.jpeg',
                title: 'japan',
                subtitle: 'asia',
                transitionType: _transitionType,
                page: DetailsPage(
                  title: 'japan',
                  image: 'assets/img.jpeg',
                  body: ' Asia ',
                ),
              ),
              const SizedBox(width: 8.0),
              SmallCard(
                image: 'assets/img.jpeg',
                title: 'japan',
                subtitle: 'asia',
                transitionType: _transitionType,
                page: DetailsPage(
                  title: 'japan',
                  image: 'assets/img.jpeg',
                  body: ' Asia ',
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            children: <Widget>[
              SmallCard(
                  image: 'assets/img.jpeg',
                  title: 'japan',
                  subtitle: 'asia',
                  transitionType: _transitionType,
                  page: DetailsPage(
                    title: 'japan',
                    image: 'assets/img.jpeg',
                    body: ' Asia ',
                  )),
              const SizedBox(width: 8.0),
              SmallCard(
                  image: 'assets/img.jpeg',
                  title: 'japan',
                  subtitle: 'asia',
                  transitionType: _transitionType,
                  page: DetailsPage(
                    title: 'japan',
                    image: 'assets/img.jpeg',
                    body: ' Asia ',
                  )),
              const SizedBox(width: 8.0),
              SmallCard(
                image: 'assets/img.jpeg',
                title: 'japan',
                subtitle: 'asia',
                transitionType: _transitionType,
                page: DetailsPage(
                  title: 'japan',
                  image: 'assets/img.jpeg',
                  body: ' Asia ',
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          ...List<Widget>.generate(10, (int index) {
            return AvatarTile(
              transitionType: _transitionType,
              index: index,
            );
          }),
        ],
      ),
      floatingActionButton: FabAnimate(transitionType: _transitionType),
    );
  }
}
