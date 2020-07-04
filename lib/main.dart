import 'package:flutter/material.dart';

import './pages/home.dart';
import './pages/test.dart';
import './pages/result.dart';

void main() {
  runApp(App());
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