import 'package:flutter/material.dart';

import 'auth/auth.dart';

void main() {
  runApp(Yoof());
}

class Yoof extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yoof',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthActivity(),
    );
  }
}
