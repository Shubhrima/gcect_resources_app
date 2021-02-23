import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.name, this.url_link});
  final String name;
  final String url_link;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all((25),),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.green[50],
      ),
      child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: name,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    var url = url_link;
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  }),
          ])),
    );
  }
}