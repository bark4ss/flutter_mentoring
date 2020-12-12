import 'package:flutter/material.dart';
import 'package:flutter_app/http/l10n/demo_localizations.dart';
import 'package:flutter_app/http/model/item.dart';
import 'package:flutter_app/http/service/app_state.dart';
import 'package:flutter_app/http/service/app_state_block.dart';
import 'package:flutter_app/http/service/app_state_events.dart';
import 'package:flutter_app/http/service/network_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondScreenWidget extends StatelessWidget {

  final Future<List<Item>> futureItem = NetworkService().get();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ItemDrawerBloc>(
        create: (_) => ItemDrawerBloc(),
      child: BlocBuilder<ItemDrawerBloc, ItemDrawerState>(
        builder: (_, state) {
          return Scaffold(
              appBar: AppBar(title: Text(DemoLocalizations.of(context).nextScreenTitle)),
              body: FutureBuilder<List<Item>> (
                  future: futureItem,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView(
                        children: (snapshot.data)
                            .map((item) => ListTile(
                          title: Text(item.id.toString()),
                          subtitle: Text(item.title),
                          trailing: RaisedButton(
                            onPressed: () {
                              BlocProvider.of<ItemDrawerBloc>(context).add(ItemDrawer(item));
                              Navigator.of(context).pop();
                            },
                            child: Text(DemoLocalizations.of(context).additionalInfoTitle),
                          ),
                        ))
                            .toList(),
                      );
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }
              )
          );
        },
      ),
    );
  }

}

