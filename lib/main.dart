import 'package:flutter/material.dart';
import 'package:stupor/screens/auth_screen/sign_in.dart';
import 'package:stupor/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stupor',
       theme: AppTheme.theme,
      home: SignIn()
    );
  }
}


