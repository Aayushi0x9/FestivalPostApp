import 'package:flutter/material.dart';

import 'heading.dart';

Widget fontOpacity(
    {required quoteOpacity, required getsetState, required Size size}) {
  return Column(
    children: [
      heading(heading: 'Font Opacity'),
      SizedBox(
        height: size.height * 0.02,
      ),
      Slider(
        value: quoteOpacity,
        onChanged: (value) {
          quoteOpacity = value;
          getsetState();
        },
        min: 0.0,
        max: 1.0,
        divisions: 10,
      ),
    ],
  );
}
