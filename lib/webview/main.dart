import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/http/model/app_routes.dart';
import 'package:flutter_app/webview/video_player_page.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter WebView',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
    initialRoute: AppRoutes.home,
    routes: {
      AppRoutes.home: (BuildContext context) => HomePage(),
      AppRoutes.second: (BuildContext context) => VideoPlayerScreen(),
    });
  }
}