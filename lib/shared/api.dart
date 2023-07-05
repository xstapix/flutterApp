import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

var _url = Uri.parse('https://kronadev.ru/api_2/');

Future fetchData() async {
  const apiUrl = 'https://jsonplaceholder.typicode.com/photos?id=1436';

  final response = await http.post(
    _url,
    body: jsonEncode(<String, String>
      {"method":"getTagsMaterial"}
    )
  );
  final data = json.decode(response.body);

  return data;
}