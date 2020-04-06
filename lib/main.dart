import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String url = 'http://yourwebsite/posizioni.php'; //deactive SSL on your website or create a direct link

  Future<String> makeRequest() async {
    var response = await http.post(
      Uri.encodeFull(url),
      headers: {"Accept": "text/html"},
    );

    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
            child: new RaisedButton(
      child: new Text('Make Request'),
      onPressed: makeRequest,
    )));
  }
}
