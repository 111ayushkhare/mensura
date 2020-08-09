import 'package:flutter/material.dart';
import 'package:mensura/constant.dart';

class CalculationScreen extends StatefulWidget {
  final String unit;

  //double measure = 0;

  CalculationScreen({this.unit});

  @override
  _CalculationScreenState createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(widget.unit),
          Container(
            child: Row(
              children: <Widget>[
                DropdownButton(
                  items: <DropdownMenuItem<dynamic>>[],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
