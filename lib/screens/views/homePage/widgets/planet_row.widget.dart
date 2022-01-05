import 'package:flutter/material.dart';
import 'package:planets/screens/views/homePage/constants/text_styles.constant.dart';

import 'package:planets/screens/views/homePage/models/planet.model.dart';
import 'package:planets/screens/views/homePage/widgets/detail_page.widget.dart';

class PlanetRow extends StatelessWidget {
  final Planet planet;

  PlanetRow({
    Key? key,
    required this.planet,
  }) : super(key: key);

  Container _planetThumbnail() {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      alignment: FractionalOffset.centerLeft,
      child: Hero(
        tag: 'planet-hero-${planet.id}',
        child: Image(
          image: AssetImage(planet.image),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );
  }

  final planetCard = Container(
    height: 124.0,
    margin: const EdgeInsets.only(left: 46.0),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(33, 5, 53, 1.0),
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

  Row _planetValue({String? value, IconData? icon}) {
    return Row(
      children: [
        Icon(
          icon!,
          size: 12.0,
          color: Colors.white,
        ),
        Container(width: 8.0),
        Text(
          value!,
          style: regularTextStyle,
        ),
      ],
    );
  }

  Container _planetCardContent() {
    return Container(
      margin: const EdgeInsets.fromLTRB(110.0, 16.0, 16.0, 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 4.0,
          ),
          Text(
            planet.name,
            style: headerTextStyle,
          ),
          Container(height: 10.0),
          Text(
            planet.location,
            style: subHeaderTextStyle,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            height: 2.0,
            width: 18.0,
            color: Colors.white,
          ),
          Row(
            children: [
              Expanded(
                  child: _planetValue(
                      value: planet.distance, icon: Icons.navigation)),
              Expanded(
                  child: _planetValue(
                      value: planet.gravity, icon: Icons.arrow_downward))
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => DetailPage(planet: planet),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        child: Stack(
          children: [
            planetCard,
            _planetThumbnail(),
            _planetCardContent(),
          ],
        ),
      ),
    );
  }
}
