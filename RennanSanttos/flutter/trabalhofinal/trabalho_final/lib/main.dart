import 'package:flutter/material.dart';
import 'package:trabalho_final/welcome.dart';
//import 'package:trabalho_final/reset_password_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trabalho Final - Disp. Moveis',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      //home: ResetPasswordPage(),
      home: Welcome(),
    );
  }
}
