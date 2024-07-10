import 'package:flutter/material.dart';

double getHeight(double y, BuildContext context) {
  return MediaQuery.of(context).size.height * y / 1024;
}

double getWidth(double x, BuildContext context) {
  return MediaQuery.of(context).size.width * x / 1440;
}
