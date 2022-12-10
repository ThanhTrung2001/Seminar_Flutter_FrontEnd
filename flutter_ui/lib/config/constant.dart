import 'package:flutter/material.dart';

const double percent = 1920 / 1080;

double returnPresentScreen(Size size) {
  return size.width / size.height;
}

double getPercent(Size size) {
  return returnPresentScreen(size) / percent;
}
