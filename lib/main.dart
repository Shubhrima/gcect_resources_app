import 'package:flutter/material.dart';
import 'firstYearCSEIT.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}


class Announcements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
