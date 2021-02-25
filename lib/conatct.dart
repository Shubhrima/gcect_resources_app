import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              children: [
                SizedBox(
                  width: 20.0,
                ),
                Expanded(

                  child: Image.asset(
                    'assets/images/Shubhrima.jpg',
                    semanticLabel: 'Shubhrima Jana',
                    width: 100.0,
                    height: 75.0,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Shubhrima Jana',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
              ],
            ),
          ),
          Expanded(
            flex:4,
            child: Row(),),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: RichText(
            text: TextSpan(
                children: [
                  TextSpan(
                      text: "✉",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                      recognizer: TapGestureRecognizer()..onTap =  () async{
                        var url = "mailto:shubhrijana@gmail.com";
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      }
                  ),
                ]
            )),
        backgroundColor: Colors.white,
      ),
    );
  }
}
