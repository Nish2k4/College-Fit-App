import 'package:flutter/material.dart';

class CollegePage{

  String name; // Name of the college
  String location; // Location of the college
  String logo; // Logo of the college

  CollegePage({this.name, this.location, this.logo});
}

class collegePage extends StatefulWidget {
  @override
  _collegePageState createState() => _collegePageState();
}

class _collegePageState extends State<collegePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
