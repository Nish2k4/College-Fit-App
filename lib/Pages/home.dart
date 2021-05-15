import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue [600],
      appBar: AppBar(
        backgroundColor: Colors.yellow [800],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Centers the text and logo
          children: [
            Text("College Fit "),
            Image.asset(
              "Images/Logo.png",
              fit: BoxFit.contain,
              height: 32,
            ),
          ],
        ),
      ),
      body: SafeArea( // Prevents us from placing widgets on the curved areas of the screen
        child: Padding( // Space from other elements
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Welcome to College Fit!",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.amber,
                    ),
                  ),
                ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}
