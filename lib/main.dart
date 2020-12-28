import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trionoma/pages/sign_in.dart';
import 'package:trionoma/pages/sign_up.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  runApp(
    MaterialApp(
      title: "Trionoma",
      debugShowCheckedModeBanner: false,
      home: SignUp(),
      routes: {
        '/SignIn': (context) => SignIn(),
        '/SignUp': (context) => SignUp(),
      },
    ),
  );
}
