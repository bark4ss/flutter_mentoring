import 'package:flutter/material.dart';
import 'package:flutter_app/http/l10n/demo_localizations.dart';
import 'package:flutter_app/http/model/app_routes.dart';
import 'package:flutter_app/http/model/item.dart';
import 'package:flutter_app/http/service/app_state.dart';
import 'package:flutter_app/http/service/app_state_block.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreenWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ItemDrawerBloc>(
        create: (_) => ItemDrawerBloc(),
        child: BlocBuilder<ItemDrawerBloc, ItemDrawerState>(
          builder: (_, state) {
            return WillPopScope(
                // ignore: missing_return
                onWillPop: () { _onBackPressed(context); },
                child: Scaffold(
                    appBar: AppBar(title: Text(DemoLocalizations
                        .of(context)
                        .mainScreenTitle)),
                    body: Center(
                      child: Column(
                          children: <Widget>[
                            RaisedButton(
                                onPressed: () async {
                                  await Navigator.of(context).pushNamed(AppRoutes.second);
                                },
                                child: Text(DemoLocalizations.of(context).nextScreenTitle)),
                            Wrap(
                              direction: Axis.vertical,
                              spacing: 10.0,
                              children:<Widget>[
                                Text('ID: ${state.selectedItem.id.toString()}'),
                                Text('Title: ${state.selectedItem.title}'),
                                Text('Body: ${state.selectedItem.details}'),
                              ],
                            ),
                          ]
                      ),
                    ),
                )
            );
          }
        ),
    );
  }

  Future<bool> _onBackPressed(BuildContext context) {
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