import 'package:flutter/material.dart';
import 'package:vitals/login/loginPage.dart';

void main() => runApp(Vitals());

class Vitals extends StatefulWidget {
  @override
  _VitalsState createState() => _VitalsState();
}

class _VitalsState extends State<Vitals> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* theme: ThemeData(
        fontFamily: 'Source Sans Pro',
      ),*/
      home: Login(),
    );
  }
}
