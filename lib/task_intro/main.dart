import 'package:flutter/material.dart';

import 'constants.dart';
import 'my_body.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(titleFlutter)),
        body: MyBodyWidget(),
      ),
    ),
  );
}
