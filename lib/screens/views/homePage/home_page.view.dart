import 'package:flutter/material.dart';
import 'package:planets/screens/views/homePage/widgets/home_page_body.widget.dart';

import 'widgets/gradient_appbar.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          GradientAppBar(title: 'Space Away'),
          HomePageBody(),
        ],
      ),
    );
  }
}
