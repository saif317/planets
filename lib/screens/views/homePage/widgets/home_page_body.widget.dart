import 'package:flutter/material.dart';
import 'package:planets/screens/views/homePage/constants/planets.constant.dart';
import 'package:planets/screens/views/homePage/widgets/planet_row.widget.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlanetRow(
      planet: planets[0],
    );
  }
}
