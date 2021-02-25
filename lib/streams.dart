import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'secondYearCseIt.dart';
import 'secondYearCT.dart';

class StreamsPage extends StatelessWidget {
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
            onTap: (){Navigator.pop(context);},
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
                    child: Text('STREAM', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),textAlign:TextAlign.center,),
                  ),
                ],
              ),
            ),
            Expanded(child:FlatButton(
              child: Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Image.asset('assets/images/cse.png',
                      semanticLabel: 'Computer Science and Engineering',
                      width: 100.0,
                      height: 75.0,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Computer Science and Engineering',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
              onPressed: () {
                kstream=1;
                print(kstream);
                if (year==2){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> secondYearCSEIT(),),);
                }
              },
            ),),
            Expanded(child:FlatButton(
              child: Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Image.asset('assets/images/it.jpg',
                      semanticLabel: 'Information Technology',
                      width: 100.0,
                      height: 75.0,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Information Technology',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
              onPressed: () {
                kstream=2;
                print(kstream);
                if (year==2){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> secondYearCSEIT(),),);
                }
              },
            ),),
            Expanded(child:FlatButton(
              child: Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Image.asset('assets/images/ct.jpg',
                        semanticLabel: 'Ceramic Technology',
                      width: 100.0,
                      height: 75.0,
                    ),
                  ),
                  Expanded(
                    child: Text(
                        'Ceramic Technology',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
              onPressed: () {
                if (year==2)
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> secondyearCT(),),);
                  }

              },
            ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Expanded(child: Row(),),
          ],
        ),

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

