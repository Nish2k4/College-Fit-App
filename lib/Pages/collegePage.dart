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
    return Scaffold(
      backgroundColor: Colors.cyan [800],
      appBar: AppBar(
        backgroundColor: Colors.yellow [800],
        title: Text ("Georgia Tech"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Georgia Tech University",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.map_rounded, color: Colors.green,),
                    ),
                    Text(
                      "Atlanta, Georgia",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.cyan,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
