import 'package:flutter/material.dart';
import 'category.dart';

void main() => runApp(Converter());

class Converter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'Converter',
      routes: {
        'Converter': (context) => Category(),
      },
    );
  }
}

