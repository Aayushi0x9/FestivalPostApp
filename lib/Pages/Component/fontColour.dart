import 'package:festival_post_app/utils/Globals/globals.dart';
import 'package:flutter/material.dart';

Widget fontColors({required fontColor, required getSetstate}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: Globals.colors.map((color) {
        return GestureDetector(
          onTap: () {
            fontColor = color; // Update font color
            getSetstate();
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: fontColor == color ? 3 : 1,
              ),
            ),
          ),
        );
      }).toList(),
    ),
  );
}
