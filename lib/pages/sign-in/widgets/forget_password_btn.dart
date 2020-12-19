import 'package:flutter/material.dart';
import 'package:trionoma/pages/sign-in/utilities/constants.dart';

Widget buildForgotPasswordBtn() {
  return Container(
    alignment: Alignment.centerRight,
    child: FlatButton(
      onPressed: () {
        print('Forgot Password Button Pressed');
      },
      padding: EdgeInsets.only(right: 0.0),
      child: Text(
        'Forgot Password ?',
        style: kLabelStyle,
      ),
    ),
  );
}
