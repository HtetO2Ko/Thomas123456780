import 'package:flutter/material.dart';
import 'package:grab_hand/Screens/homepage.dart';
import 'package:grab_hand/Screens/loadingscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grab Hand',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red[900],
      ),
      home: HomePage(),
    );
  }
}
