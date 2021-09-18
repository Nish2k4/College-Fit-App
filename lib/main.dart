import 'package:flutter/material.dart';
import 'package:college_app/Pages/home.dart';
import 'package:college_app/Pages/collegeList.dart';
import 'package:college_app/Pages/collegePage.dart';
import 'package:college_app/Pages/loading.dart';
import 'package:college_app/Pages/search.dart';
import 'package:college_app/Pages/test.dart';
import 'package:college_app/Pages/colleges/ugaPage.dart';
import 'package:college_app/Pages/colleges/gsuPage.dart';


void main() {
  runApp(MaterialApp(
    // Routing System
    initialRoute: "/home",
    routes: {
      "/": (context) => Loading(),
      "/home": (context) => Home(),
      "/collegePage": (context) => collegePage(),
      "/collegeList": (context) => collegeList(),
      "/search": (context) => search(),
      "/test": (context) => test(),
      "/ugaPage": (context) => ugaPage(),
      "/gsuPage": (context) => gsuPage(),
    },
  ));
}

