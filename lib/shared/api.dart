import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

var _url = Uri.parse('https://kronadev.ru/api_2/');

Future getTags() async {
  final response = await http.post(
    _url,
    body: jsonEncode(<String, String>
      {"method":"getTagsMaterial"}
    )
  );
  final data = json.decode(response.body);

  return data;
}

Future getMaterials() async {
  final response = await http.post(
    _url,
    body: jsonEncode(
      {
        'active_tags': [],
        'auth_user_id': null,
        'date_last_material': "",
        'method': "getMaterialsPage",
        'page': 1,
        'search': "",
        'toggle_favorite': false,
        'toggle_unfinished': false
      }
    )
  );
  final data = json.decode(response.body);

  return data['materials'];
}

Future getFavorite() async {
  final response = await http.post(
    _url,
    body: jsonEncode(
      {
        'auth_user_id': 1332,
        'method': "getListNotedMaterials"
      }
    )
  );
  final data = json.decode(response.body);

  return data;
}

Future changeCompleteMaterial(name) async {
  final response = await http.post(
    _url,
    body: jsonEncode(
      {
        'auth_user_id': 1735,
        'material_name': name,
        'method': "changeCompleteMaterial"
      }
    )
  );
}