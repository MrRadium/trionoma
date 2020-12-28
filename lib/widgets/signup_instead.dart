import 'package:flutter/material.dart';

Widget buildSignInInstead(BuildContext context) {
  var _screenWidth = MediaQuery.of(context).size.width;
  return GestureDetector(
    onTap: () {
      Navigator.pushReplacementNamed(context, '/SignUp');
    },
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an Account? ',
            style: TextStyle(
              color: Colors.white,
              fontSize: _screenWidth * 0.045,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: 'Sign Up',
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
