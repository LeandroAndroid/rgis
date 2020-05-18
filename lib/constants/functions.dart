import 'package:flutter/material.dart';

double returnWidth({double width = 900, @required double small, @required double medium, @required double large}) {
  double rwidth = 0.0;

  if (large > 12) large = 12;
  if (medium > 12) medium = 12;
  if (small > 12) small = 12;
  if (large < 1) large = 1;
  if (medium < 1) medium = 1;
  if (small < 1) small = 1;

  if (width >= 900) {
    rwidth = (width / 12) * large;
  } else if (width > 450) {
    rwidth = (width / 12) * medium;
  } else if (width <= 450) {
    rwidth = (width / 12) * small;
  }
  return rwidth;
}
