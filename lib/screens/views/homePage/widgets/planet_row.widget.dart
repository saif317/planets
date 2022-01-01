import 'package:flutter/material.dart';

import 'package:planets/screens/views/homePage/models/planet.model.dart';

class PlanetRow extends StatelessWidget {
  final Planet planet;

  PlanetRow({
    Key? key,
    required this.planet,
  }) : super(key: key);

  Widget planetThumbnail() {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      alignment: FractionalOffset.centerLeft,
      child: Image(
        image: AssetImage(planet.image),
        height: 92.0,
        width: 92.0,
      ),
    );
  }

  final planetCard = Container(
    height: 124.0,
    margin: const EdgeInsets.only(left: 46.0),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(123, 51, 125, 1.0),
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(8.0),
      boxShadow: const [
        BoxShadow(
          color: Color.fromRGBO(123, 51, 125, 0.4),
          blurRadius: 10.0,
          offset: Offset(0.0, 10.0),
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: Stack(
        children: [
          planetCard,
          planetThumbnail(),
        ],
      ),
    );
  }
}
