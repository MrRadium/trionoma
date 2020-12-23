import 'package:flutter/material.dart';
import 'package:trionoma/widgets/google_icon.dart';

Widget buildSignInWithGoogle(BuildContext context) {
  var _screenHeight = MediaQuery.of(context).size.height;
  var _screenWidth = MediaQuery.of(context).size.width;
  var _screenSize = MediaQuery.of(context).devicePixelRatio;

  return Container(
    height: _screenHeight * 0.093,
    width: double.infinity,
    child: RaisedButton(
      elevation: 5.0,
      onPressed: () {
        print('Login With Google Button Pressed');
      },
      padding: EdgeInsets.all(40 / _screenSize),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_screenWidth * 0.083),
      ),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          buildGoogleIcon(
            context,
            () {
              print("Login with Google");
            },
            AssetImage(
              'assets/logos/google.jpg',
            ),
          ),
          Text(
            "SIGN-IN WITH GOOGLE",
            style: TextStyle(
              color: Color(0xFF5259FB),
              letterSpacing: _screenWidth * 0.000,
              fontWeight: FontWeight.bold,
              fontSize: _screenWidth * 0.045,
              fontFamily: 'OpenSans',
            ),
          )
        ],
      ),
    ),
  );
}
