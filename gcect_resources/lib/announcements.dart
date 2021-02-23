import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class Announcements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Icon(Icons.arrow_back),
                onTap: (){Navigator.pop(context);},
              ),
            ),
            title: Center(
              child: Text('Notefy 📝'),
            ),
            backgroundColor: Colors.green,
          ),
      ),
    );
  }
}
