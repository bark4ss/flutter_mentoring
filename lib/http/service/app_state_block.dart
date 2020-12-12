
import 'package:flutter_app/http/model/item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_state.dart';
import 'app_state_events.dart';

class ItemDrawerBloc extends Bloc<ItemEvent, ItemDrawerState> {

  ItemDrawerBloc() : super(ItemDrawerState(Item(0, 0, 'title', 'details')));

  @override
  Stream<ItemDrawerState> mapEventToState(ItemEvent event) async* {
    if (event is ItemDrawer) {
      yield ItemDrawerState(event.item);
    }
  }
}