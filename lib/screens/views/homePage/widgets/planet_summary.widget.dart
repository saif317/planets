import 'package:flutter/material.dart';
import 'package:planets/screens/views/homePage/constants/text_styles.constant.dart';

import 'package:planets/screens/views/homePage/models/planet.model.dart';

class PlanetSummary extends StatelessWidget {
  const PlanetSummary({
    Key? key,
    required this.planet,
    this.horizontal = true,
  }) : super(key: key);

  final Planet planet;
  final bool horizontal;

  const PlanetSummary.vertical(this.planet, {Key? key})
      : horizontal = false,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final _planetThumbnail = Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      alignment:
          horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
      child: Hero(
        tag: 'planet-hero-${planet.id}',
        child: Image(
          image: AssetImage(planet.image),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );

    Widget _planetValue({String value, String image}) {
      return Container(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              image,
              height: 12.0,
            ),
            Container(
              width: 8.0,
            ),
            Text(
              planet.gravity,
              style: regularTextStyle,
            )
          ],
        ),
      );
    }

    return Container();
  }
}
