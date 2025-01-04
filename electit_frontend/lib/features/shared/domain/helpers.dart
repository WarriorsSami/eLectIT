import 'package:flutter/material.dart';

List<Color> getRandomDifferentColors(int count) {
  final colors = <Color>[];
  for (var i = 0; i < count; i++) {
    colors.add(Colors.primaries[i % Colors.primaries.length]);
  }
  return colors;
}
