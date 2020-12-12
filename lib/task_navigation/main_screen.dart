import 'package:flutter/material.dart';

class MainScreenWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreenWidget> {
  var text = '';

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(title: Text('Main Screen')),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                  onPressed: () async {
                    var result =
                        await Navigator.of(context).pushNamed('/second');
                    if (result != null) {
                      setState(() {
                        text = result;
                      });
                    }
                  },
                  child: Text('Go to the next screen')),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> _onBackPressed() {
    return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Are you sure?'),
            content: Text('Do you want to exit an App'),
            actions: <Widget>[
              GestureDetector(
                onTap: () => Navigator.of(context).pop(false),
                child: Text("NO"),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () => Navigator.of(context).pop(true),
                child: Text("YES"),
              ),
            ],
          ),
        ) ??
        false;
  }
}
