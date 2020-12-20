import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trionoma/pages/sign-in/sign_in.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  runApp(
    MaterialApp(
      title: "Trionoma",
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    ),
  );
}
