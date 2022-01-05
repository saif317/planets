import 'package:flutter/material.dart';

import 'package:planets/screens/views/homePage/models/planet.model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key? key,
    required this.planet,
  }) : super(key: key);

  final Planet planet;

  Container _getBackground() {
    return Container(
      child: Image.network(
        'https://cdnb.artstation.com/p/assets/images/images/028/779/381/medium/justinas-vitkus-mercury-color3-3.jpg?1595483956',
        fit: BoxFit.cover,
        height: 300.0,
      ),
      constraints: const BoxConstraints.expand(height: 300.0),
    );
  }

  Container _getGradient() {
    return Container(
      margin: const EdgeInsets.only(top: 190.0),
      // height: 110.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(123, 51, 125, 0.0),
            Color.fromRGBO(123, 51, 125, 1.0),
          ],
          stops: [0.0, 0.22],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(0.0, 1.0),
        ),
      ),
    );
  }

  ListView _getContent() {
    return ListView(
      padding: const EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
      children: [
        
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(245, 213, 224, 1.0),
        constraints: const BoxConstraints.expand(),
        child: Stack(
          children: [
            _getBackground(),
            _getGradient(),
            _getContent(),
            // _getToolbar(context),
          ],
        ),
      ),
    );
  }
}
