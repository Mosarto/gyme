import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TraninglistData {
  final String? name;

  final String? level;

  final String? stars;

  final int? index;

  TraninglistData({
    this.name,
    this.level,
    this.stars,
    this.index,
  });
}

final List<Color> ative = [
  Color(0xff988FFF),
  Color(0xff6155ED),
];

final List<Color> off = [
  Color(0xffFAFAFF),
  Color(0xffCFD4FE),
];

final traninglistadatas = [
  TraninglistData(
    name: 'Aerobic fitness',
    level: 'Beginner',
    stars: '5',
    index: 0,
  ),
  TraninglistData(
    name: 'Muscle Training',
    level: 'Pro',
    stars: '4.8',
    index: 1,
  ),
  TraninglistData(
    name: 'Flexibility',
    level: 'Advanced',
    stars: '4.9',
    index: 2,
  ),
];
