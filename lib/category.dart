import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit Converter'),
      ),
      body: Container(
          child: ListView(
            children: <Widget>[
              CardTile(text: 'Length'),
              CardTile(text: 'Area'),
              CardTile(text: 'Volume'),
              CardTile(text: 'Mass'),
              CardTile(text: 'Temperature'),
              CardTile(text: 'Time'),
              CardTile(text: 'Speed'),
              CardTile(text: 'Pressure'),
              CardTile(text: 'Energy'),
            ],
          ),
        )
    );
  }
}

// ignore: must_be_immutable
class CardTile extends StatelessWidget {
  CardTile({this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(8.0),
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(16.0)),
      ),
      child: InkWell(
        onTap: (){},
        splashColor: Colors.red,
        child: Container(
          width: double.infinity,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),
          padding: EdgeInsets.all(16.0),
        ),
      ),
    );
  }
}
