import 'package:flutter/material.dart';

const starCruiser = TextStyle(fontFamily: 'StarCruiser');

const starCruiserExpanded = TextStyle(fontFamily: 'StarCruiserExpanded');

final headerTextStyle = starCruiserExpanded.copyWith(
  color: Colors.white,
  fontSize: 21.0,
);

final regularTextStyle = starCruiser.copyWith(
  color: const Color.fromRGBO(200, 116, 178, 1.0),
  fontSize: 12.0,
);

final subHeaderTextStyle = regularTextStyle.copyWith(fontSize: 15.0);
