import 'package:flutter_app/http/model/item.dart';

abstract class ItemEvent {
  const ItemEvent();
}

class ItemDrawer extends ItemEvent {
  final Item item;

  const ItemDrawer(this.item);
}