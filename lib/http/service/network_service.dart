import 'dart:convert';

import 'package:flutter_app/http/model/item.dart';
import 'package:http/http.dart' as http;

const _url = "https://jsonplaceholder.typicode.com/posts";

class NetworkService {
  // ignore: missing_return
  Future<List<Item>> get() async {
    final response = await http.get(_url);
    try {
      if (response.statusCode == 200) {
        final List<dynamic> body = jsonDecode(response.body);
        final items = body
            .map(
              (item) => Item.fromJson(item),
        )
            .toList();
        return items;
      } else {
        throw Exception('Failed to load items');
      }
    } catch (e) {
      print(e);
    }
  }
}