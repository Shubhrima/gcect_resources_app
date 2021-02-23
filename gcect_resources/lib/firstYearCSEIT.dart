import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'notes.dart';
import 'reusablecard.dart';

const activeCardColour = Color(0XFFFcaf9cc);

// ignore: camel_case_types
class firstYearCSEIT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: Icon(Icons.arrow_back),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          title: Center(
            child: Text('Notefy 📝'),
          ),
          backgroundColor: Colors.green,
        ),
        body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(name: 'Maths1'),
                ),
                Expanded(
                  child: ReusableCard(name: 'Physics'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                child: ReusableCard(name: 'Basic Electrical'),
              ),
              Expanded(
                child: ReusableCard(
                  name: 'English',
                ),
              ),
            ]),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(name: 'Maths2'),
                ),
                Expanded(
                  child: ReusableCard(name: 'Chemistry'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(name: 'Mechanical'),
                ),
                Expanded(
                  child: ReusableCard(name: 'Programming in C', url_link: "https://shubhrima.github.io/project_resources/pdf/1st%20year/C.pdf",),
                ),
              ],
            ),
          ),Expanded(
            child: Row(),
          ),
        ],
          ),
        /*floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('notes');
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Notes(),),);
          },
          child: Icon(Icons.note_add_sharp, color: Colors.green,),
          backgroundColor: Colors.white,
        ),*/
        bottomNavigationBar: BottomAppBar(
          child: Text(
            'Made with ❤ Shubhrima',
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          color: Colors.green,
        ),
      ),
    );
  }
}
