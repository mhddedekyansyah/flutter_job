import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_finder_app/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF43B1B7),
        accentColor: Color(0xFFFED408)
      ),
      home: HomeScreen(),
    );
  }
}

