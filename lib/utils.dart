import 'package:flutter/material.dart';

class Utils {
  static Widget clipImageCirle(String url, double radius) {
    return Container(
        width: radius,
        height: radius,
        decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
                fit: BoxFit.fill,
                image: new NetworkImage(url))));
  }
}
