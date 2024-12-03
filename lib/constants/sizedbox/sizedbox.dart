import 'package:flutter/material.dart';

class Sizebox {
  static SizedBox normalheightbox =  SizedBox(
    height: 15,
  );
  static SizedBox normalwidthbox =  SizedBox(
    width: 15,
  );
}
  Widget sbheight(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget sbwidth(double width) {
    return SizedBox(
      width: width,
    );
  }

