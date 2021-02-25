import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'firstYearCSEIT.dart';
import 'constants.dart';

void subjectPlan()
{
  print('year');
  print(year);
  print('stream');
  print(kstream);

  if(year==2)
    {
      print('CSE = IT');
    }
  if(year==1)
    {
      if(kstream==1 || kstream==2)
      firstYearCSEIT();
    }
}

class SubjectPage extends StatelessWidget {


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
              onTap: (){
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
                children: [
                  Expanded(
                    child: Text('SUBJECTS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),textAlign:TextAlign.center,),
                  ),
                  Expanded(
                    child:FlatButton(
                      child:Text('Click me'),
                      onPressed: (){
                        subjectPlan();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

