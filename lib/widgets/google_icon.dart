import 'package:flutter/material.dart';

Widget buildGoogleIcon(BuildContext context, Function onTap, AssetImage logo) {
  var _screenHeight = MediaQuery.of(context).size.height;
  var _screenWidth = MediaQuery.of(context).size.width;

  return Container(
    height: _screenHeight * 0.10,
    width: _screenWidth * 0.166,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      image: DecorationImage(
        image: logo,
        fit: BoxFit.contain,
      ),
    ),
  );
}
