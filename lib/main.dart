import 'package:flutter/material.dart';

import './pages/auth.dart';
main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        brightness: Brightness.dark,
        accentColor: Colors.deepPurple
      ),
      home: AuthPage()
    );
  }
}
