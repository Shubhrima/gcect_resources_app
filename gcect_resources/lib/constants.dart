import 'package:flutter/material.dart';

int year;

int kstream;


class MultipleUseage extends StatelessWidget {
  MultipleUseage({this.textName});
  final String textName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FlatButton(
          onPressed: null,
          child: Container(
            margin: EdgeInsets.all(16.0),
            child: Text(textName,style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87), ),
          ),
        ),
      ],
    );
  }
}
