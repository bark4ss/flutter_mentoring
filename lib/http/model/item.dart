import 'dart:ui';

import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {

  final int id;
  final int userId;
  final String title;
  @JsonKey(name: 'body')
  final String details;

  Item(this.id, this.userId, this.title, this.details);

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other))
      return true;
    if (other.runtimeType != runtimeType)
      return false;
    return other is Item
        && other.id == id
        && other.userId == userId
        && other.title == title
        && other.details == details;
  }

  @override
  int get hashCode => hashValues(id, userId, title, details);

}