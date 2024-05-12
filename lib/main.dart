import 'package:flutter/material.dart';
import 'package:token_lsit/core/app.dart';
import 'package:token_lsit/core/injection/injection.dart';

void main() {
  configureDependencies();

  runApp(const App());
}
