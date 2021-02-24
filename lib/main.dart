import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mobile_app/states/test_state.dart';
import 'package:mobile_app/models/stub_test_data.dart';

import './pages/home.dart';
import './pages/test.dart';
import './pages/result.dart';

void main() async {
  var jsonData = await json.decode(testDataJson);

  runApp(ChangeNotifierProvider(
    create: (_) => TestState(jsonData),
    child: App(),
  ));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Test',
      initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/test': (context) => Test(),
          '/result': (context) => Result(),
        }
    );
  }
}