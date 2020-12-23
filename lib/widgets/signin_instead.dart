import 'package:flutter/material.dart';

Widget buildSignInInstead(BuildContext context) {
  var _screenWidth = MediaQuery.of(context).size.width;
  return GestureDetector(
    onTap: () => print('Sign Up Button Pressed'),
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an Account? ',
            style: TextStyle(
              color: Colors.white,
              fontSize: _screenWidth * 0.045,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: 'Sign In',
            style: TextStyle(
              color: Colors.white,
              fontSize: _screenWidth * 0.045,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
