import 'package:flutter/material.dart';

class SecondScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second screen')),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop('42');
                },
                child: Text('Return 42')),
            RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop('AbErVaLlG');
                },
                child: Text('Return AbErVaLlG'))
          ],
        ),
      ),
    );
  }
}
