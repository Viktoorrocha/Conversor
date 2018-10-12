import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

const request = "https://api.hgbrasil.com/finance?format=json&key=f7fd2d86";

void main() async{

  print(await getData());

  runApp(MaterialApp(
    home: Container(),
  ));
}
Future<Map> getData() async {
  http.Response response = await http.get(request);
  return json.decode(response.body);

}