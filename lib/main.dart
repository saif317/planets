import 'package:flutter/material.dart';

import 'screens/views/homePage/home_page.view.dart';

void main() {

  runApp(MaterialApp(
    title: 'Planets',
    theme: ThemeData(fontFamily: 'StarCruiser'),
    home: const HomePage(),
  ));
}
