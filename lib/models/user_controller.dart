import 'dart:convert';

import 'package:codewithasjok/models/models.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class userController extends ChangeNotifier {
  var userData = <Userdata>[];
  var loading = true;
  getData() async {
    String url = "";
    try {
      var res = await http.get(Uri.parse(url));
      if (res.statusCode == 200) {
        userData = List<Userdata>.from(
            json.decode(res.body).map((x) => Userdata.fromJson(x)));
      }
    } catch (e) {
      print(e);
    }
  }
}
