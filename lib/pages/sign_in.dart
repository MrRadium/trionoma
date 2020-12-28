import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:trionoma/widgets/email_tf.dart';
import 'package:trionoma/widgets/forget_password_btn.dart';
import 'package:trionoma/widgets/password_tf.dart';
import 'package:trionoma/widgets/signup_instead.dart';
import 'package:trionoma/widgets/signin_btn.dart';
import 'package:trionoma/widgets/signin_with_google.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _screenHeight = MediaQuery.of(context).size.height;
    var _screenWidth = MediaQuery.of(context).size.width;

    TextEditingController a = new TextEditingController();
    TextEditingController b = new TextEditingController();

    FlutterStatusbarcolor.setStatusBarColor(Color(0xFF3594DD));
    FlutterStatusbarcolor.setNavigationBarColor(Color(0xFF5B16D0));

    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF3594DD),
                    Color(0xFF4563DB),
                    Color(0xFF5036D5),
                    Color(0xFF5B16D0),
                  ],
                  stops: [0.1, 0.4, 0.7, 0.9],
                ),
              ),
            ),
            Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: _screenWidth * 0.115,
                  vertical: _screenHeight * 0.12,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: _screenWidth * 0.1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: _screenHeight * 0.05),
                    buildEmailTF(context, a),
                    SizedBox(height: _screenHeight * 0.05),
                    buildPasswordTF(context, b),
                    buildForgotPasswordBtn(),
                    buildSignInBtn(context),
                    buildSignInWithGoogle(context),
                    SizedBox(height: _screenHeight * 0.04),
                    buildSignInInstead(context),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
