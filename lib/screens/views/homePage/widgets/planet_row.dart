import 'package:flutter/material.dart';

class PlanetRow extends StatelessWidget {
  final planetThumbnail = Container(
    margin: const EdgeInsets.symmetric(
      vertical: 16.0,
    ),
    alignment: FractionalOffset.centerLeft,
    child: const Image(
      image: AssetImage('assets/images/mars.png'),
      height: 92.0,
      width: 92.0,
    ),
  );

  final planetCard = Container();

  PlanetRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: Stack(
        children: [
          planetThumbnail,
        ],
      ),
    );
  }
}
