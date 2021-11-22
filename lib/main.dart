import 'package:flutter/material.dart';
import 'package:change_color/change_color.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: change_color(),
    );
  }
}


