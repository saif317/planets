import 'package:flutter/material.dart';

const starCruiser = TextStyle(fontFamily: 'StarCruiser');

const starCruiserExpanded = TextStyle(fontFamily: 'StarCruiserExpanded');

final headerTextStyle = starCruiserExpanded.copyWith(
  color: Colors.white,
  fontSize: 18.0,
);

final regularTextStyle = starCruiser.copyWith(
  color: Colors.green,
  fontSize: 9.0,
);

final subHeaderTextStyle = regularTextStyle.copyWith(fontSize: 12.0);
