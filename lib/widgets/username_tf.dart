import 'package:flutter/material.dart';
import 'package:trionoma/utilities/constants.dart';

Widget buildUsernameTF(BuildContext context) {
  var _screenHeight = MediaQuery.of(context).size.height;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Username',
        style: kLabelStyle,
      ),
      SizedBox(height: _screenHeight * 0.01),
      Container(
        alignment: Alignment.centerLeft,
        decoration: kBoxDecorationStyle,
        height: 60.0, //_screenHeight * 0.09,
        child: TextField(
          keyboardType: TextInputType.name,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14.0), //_screenHeight * 0.023
            prefixIcon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            hintText: 'Enter your Username',
            hintStyle: kHintTextStyle,
          ),
        ),
      ),
    ],
  );
}
