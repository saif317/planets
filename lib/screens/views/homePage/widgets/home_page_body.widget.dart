import 'package:flutter/material.dart';
import 'package:planets/screens/views/homePage/constants/planets.constant.dart';
import 'package:planets/screens/views/homePage/widgets/planet_row.widget.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: const Color.fromRGBO(245, 213, 224, 1.0),
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              sliver: SliverFixedExtentList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => PlanetRow(planet: planets[index]),
                    childCount: planets.length,
                  ),
                  itemExtent: 152.0),
            ),
          ],
        ),
      ),
    );
  }
}
