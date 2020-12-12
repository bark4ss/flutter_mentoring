import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text('Hello World!'),
          FlatButton(
            onPressed: () async {
              const url = 'https://flutter.dev';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Text('open site'),
            color: Colors.red,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}