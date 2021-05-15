import 'package:flutter/material.dart';
import 'package:college_app/Pages/home.dart';
import 'package:college_app/Pages/collegeList.dart';
import 'package:college_app/Pages/collegePage.dart';
import 'package:college_app/Pages/loading.dart';


void main() {
  runApp(MaterialApp(
    // Routing System
    initialRoute: "/home",
    routes: {
      "/": (context) => Loading(),
      "/home": (context) => Home(),
      "/collegePage": (context) => collegePage(),
      "/collegeList": (context) => collegeList(),
    },
  ));
}

