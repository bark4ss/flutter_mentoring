import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/http/model/app_routes.dart';
import 'package:flutter_app/webview/web_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: ListView(
          children: [
            FlatButton(
              child: Text("Open Webpage"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(
                      title: "Alligator.io",
                      selectedUrl: "https://alligator.io",
                    )));
              },
            ),
            RaisedButton(
                onPressed: () async {
                  await Navigator.of(context).pushNamed(AppRoutes.second);
                },
                child: Text("Open VideoPlayer")
            )
          ],
        )
      ),
    );
  }
}