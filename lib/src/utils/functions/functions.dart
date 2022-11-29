import 'package:flutter/material.dart';
import 'package:inova/src/utils/colors/colors.dart';

// App

getColor(String colorName) {
  for (int i = 0; i < colors.length; i++) {
    if (colors[i]["colorName"] == colorName) {
      return colors[i]["colorValue"];
    }
  }
}

getContext(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.height;

  List<double> arr = [];

  arr.add(height);
  arr.add(width);
  return arr;
}
