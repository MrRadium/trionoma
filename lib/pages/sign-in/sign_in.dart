import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trionoma/pages/sign-in/widgets/email_tf.dart';
import 'package:trionoma/pages/sign-in/widgets/forget_password_btn.dart';
import 'package:trionoma/pages/sign-in/widgets/password_tf.dart';
import 'package:trionoma/pages/sign-in/widgets/signin_btn.dart';
import 'package:trionoma/pages/sign-in/utilities/constants.dart';
import 'package:trionoma/pages/sign-in/widgets/signin_with_google.dart';
import 'package:trionoma/pages/sign-in/widgets/signup_btn.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
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
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      buildEmailTF(context),
                      SizedBox(height: 30.0),
                      buildPasswordTF(context),
                      buildForgotPasswordBtn(),
                      buildSignInBtn(context),
                      buildSignInWithGoogle(context),
                      buildSignupBtn(context),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
