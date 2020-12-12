import 'package:flutter/material.dart';
import 'package:flutter_app/task_widgets/custom_extensions.dart';

class NewsBoxWidget extends StatelessWidget {
  final String title;
  final String text;
  final String imageUrl;
  final int num;
  final bool like;

  NewsBoxWidget({
    @required this.title,
    @required this.text,
    this.imageUrl,
    this.num = 0,
    this.like = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      height: 100.0,
      child: Row(children: [
        if (!imageUrl.isNullOrEmpty())
          Image.network(
            imageUrl,
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: Column(children: [
              Text(title,
                  style: TextStyle(fontSize: 20.0),
                  overflow: TextOverflow.ellipsis),
              Expanded(
                child: Text(
                  text,
                  softWrap: true,
                  textAlign: TextAlign.justify,
                ),
              ),
            ]),
          ),
        ),
        NewsBoxFavourite(num, like)
      ]),
    );
  }
}

class NewsBoxFavourite extends StatefulWidget {
  final int _num;
  final bool _like;

  NewsBoxFavourite(this._num, this._like);

  @override
  State<NewsBoxFavourite> createState() => _NewsBoxFavouriteState(_num, _like);
}

class _NewsBoxFavouriteState extends State<NewsBoxFavourite> {
  int num;
  bool like;

  _NewsBoxFavouriteState(this.num, this.like);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('In favorites $num', textAlign: TextAlign.center),
      IconButton(
          icon: Icon(
            like ? Icons.star : Icons.star_border,
            size: 30.0,
            color: Colors.blue[500],
          ),
          onPressed: pressButton),
    ]);
  }

  void pressButton() {
    setState(() {
      like = !like;

      if (like)
        num++;
      else
        num--;
    });
  }
}
