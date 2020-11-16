import 'package:flutter/material.dart';

import './router/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Router.mainRouter(),
      theme: ThemeData(
        primaryColor: Color(0xFF00008B),
      ),
    );
  }
}
