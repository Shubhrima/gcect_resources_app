import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gcect_resources/firstYearCSEIT.dart';
import 'package:url_launcher/url_launcher.dart';
import 'streams.dart';
import 'events.dart';
import 'constants.dart';
import 'conatct.dart';
import 'links.dart';



class Home extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NavDrawer(),
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Center(
          child: Text('Notefy 📝'),
        ),
        backgroundColor: Colors.green,
      ),
      drawer: NavDrawer(),
      body: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Text('YEAR', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),textAlign:TextAlign.center,),
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
                    child: Image.asset('assets/images/first.jpg',
                      semanticLabel: 'First Year',
                      width: 100.0,
                      height: 75.0,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'First Year',
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
                year=1;
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> firstYearCSEIT(),),);
              },
            ),),
            Expanded(child:FlatButton(
              child: Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Image.asset('assets/images/second.png',
                      semanticLabel: 'Second Year',
                      width: 100.0,
                      height: 75.0,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Second Year',
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
                year =2;
                Navigator.push(context, MaterialPageRoute(builder: (context)=> StreamsPage(),),);
              },
            ),),
            Expanded(child:FlatButton(
              child: Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Image.asset('assets/images/third.jpg',
                      semanticLabel: 'Third Year',
                      width: 100.0,
                      height: 75.0,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Third Year',
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
                year = 3;
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StreamsPage(),),);
              })
    ),
            Expanded(
              child:FlatButton(
              child: Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Image.asset('assets/images/fourth.jpg',
                      semanticLabel: 'Fourth Year',
                      width: 100.0,
                      height: 75.0,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Fourth Year',
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
                year =4;
                Navigator.push(context, MaterialPageRoute(builder: (context)=> StreamsPage(),),);
              },
            ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Expanded(child: Row(),),
          ],
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('questions');
        },
        child: RichText(
            text: TextSpan(
                children: [
                  TextSpan(
                      text: "📑",
                      style: TextStyle(
                        color: Colors.black,
                        shadows: [
                          Shadow(
                            blurRadius: 25.0,
                            color: Colors.green,
                          ),
                        ],
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          var url = "http://gcect.ac.in/question-paper-download/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        }
                  ),
                ]
            )),

        backgroundColor:Colors.green[500],
      ),

      /*bottomNavigationBar: BottomAppBar(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(45.0,10.0,45.0,10.0),
          child: RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Made with ❤ ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                      TextSpan(
                          text: "Shubhrima",
                          style: TextStyle(
                        color: Colors.white,
                            fontSize: 25,
                      ),
                          recognizer: TapGestureRecognizer()..onTap =  () async{
                            var url = "https://shubhrima.github.io/shubhrima";
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          }
                      ),
                    ]
                )),
        )
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

    ),);
  }
}


class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 90,
            color: Colors.green,
            child: DrawerHeader(
              child: Text(
                'MENU',
                style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold,),
              ),
              /*decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/cover.jpg')),
              ),*/
            ),
          ),

          ListTile(
            leading: Icon(Icons.link, color: Colors.green,),
            title: Text('Important Links'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Links(),),);
              },
          ),
          ListTile(
            leading: Icon(Icons.event_note_outlined,color: Colors.green,),
            title: Text('Tech Events'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Events(),),);
            },

          ),
          ListTile(
            leading: Icon(Icons.contact_mail, color: Colors.green,),
            title: Text('Contact'),
            onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> contact(),),);
            },
          ),
          ListTile(

            leading: Icon(Icons.exit_to_app, color: Colors.black,),
            title: Text('Exit'),
            onTap: () => {Navigator.of(context).pop()},
          ),

        ],
      ),

    );
  }
}

