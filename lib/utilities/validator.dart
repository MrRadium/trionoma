import 'package:flutter/material.dart';

final formKey = GlobalKey<FormState>();

signMeUp() {
  if (formKey.currentState.validate()) {}
}
