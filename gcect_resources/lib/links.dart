import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Links extends StatelessWidget {
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
          Expanded(child: Row(
            children: [
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                              text: "1)   ASCII ART",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize:18,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()..onTap =  () async{
                                var url = "https://ascii.co.uk/art";
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              }
                          ),
                        ]
                    )),
              ),
              SizedBox(
                width: 20.0,
              ),
            ],
          ),),
          Expanded(child: Row(
            children: [
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                              text: "2)     VECTOR ART",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize:18,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()..onTap =  () async{
                                var url = "https://www.vecteezy.com/";
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              }
                          ),
                        ]
                    )),
              ),
              SizedBox(
                width: 20.0,
              ),
            ],
          ),),
          Expanded(
            flex:5,
            child: Row(),)
        ],
      ),
    );
  }
}
