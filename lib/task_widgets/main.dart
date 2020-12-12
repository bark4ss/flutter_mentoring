import 'package:flutter/material.dart';
import 'package:flutter_app/constant/globalConstant.dart';

import '../task_intro/constants.dart';
import 'my_list_view.dart';
import 'news_box_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(titleFlutter)),
        body: NewsBoxWidget(
          title: titleNewsBox,
          text: textNewsBox,
          imageUrl: imageUrlNewsBox,
          num: 10,
        ),
        drawer: MyListViewWidget(),
      ),
    ),
  );
}
