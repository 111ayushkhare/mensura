import 'package:flutter/material.dart';
import 'package:mensura/calculation_screen.dart';
import 'my_flutter_app_icons.dart';

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
              CardTile(icon: Icon(Icons.linear_scale), text: 'Length'),
              CardTile(icon: Icon(Icons.directions), text: 'Area'),
              CardTile(icon: Icon(Icons.linear_scale), text: 'Volume'),
              CardTile(icon: Icon(Icons.line_weight), text: 'Mass'),
              CardTile(icon: Icon(Icons.beach_access), text: 'Temperature'),
              CardTile(icon: Icon(Icons.shutter_speed), text: 'Speed'),
              CardTile(icon: Icon(Icons.tag_faces), text: 'Pressure'),
              CardTile(icon: Icon(Icons.linear_scale), text: 'Energy'),
            ],
          ),
        ));
  }
}

// ignore: must_be_immutable
class CardTile extends StatelessWidget {
  CardTile({this.icon, this.text});

  String text;
  Icon icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(8.0),
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CalculationScreen(unit: text)),
          );
        },
        splashColor: Colors.blue,
        child: Container(
          width: double.infinity,
          child: Row(
            children: <Widget>[
              icon,
              SizedBox(
                width: 16.0,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
          padding: EdgeInsets.all(16.0),
        ),
      ),
    );
  }
}
