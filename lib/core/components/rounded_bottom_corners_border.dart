import 'package:flutter/material.dart';

class RoundedBottomCornersBorder extends RoundedRectangleBorder {
  RoundedBottomCornersBorder(double radius)
      : super(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          ),
        );
}
