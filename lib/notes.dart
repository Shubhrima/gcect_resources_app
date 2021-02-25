import 'package:flutter/material.dart';

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        /* logo
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "logo.png",
            ),
          ),*/
        title: Center(
          child: Text('Notefy 📝'),
        ),
        backgroundColor: Colors.green,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('notes_added');
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}