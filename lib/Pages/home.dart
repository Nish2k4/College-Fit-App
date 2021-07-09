import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyan [800],
        appBar: AppBar(
          backgroundColor: Colors.yellow [800],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center, // Centers the text and logo
            children: [
              Text("College Fit "),
              Image.asset(
                "Images/FinalLogo.png",
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
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 20), // Space between title and features
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text(
                      "College Tours\nPrerequesites\nTop 5 Majors\nGraduation Rate\nTransportation\nStudent Living\nEating Options\nWeather\nCollege Tuition", // List of features
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.amber,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Container( // Create a Search button
                    width: 200,
                    height: 47,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      // Add shadow behind the button
                      boxShadow: <BoxShadow> [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 1,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, "/search");
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                      padding: EdgeInsets.all(0),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF00695C), Color(0xFF009698)],
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                          ),
                          borderRadius: BorderRadius.circular(47)),
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 350, maxHeight: 50),
                          alignment: Alignment.center, //Text placement in the button
                          child: Text(
                            "Search College",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Container( // Create a Search button
                    width: 200,
                    height: 47,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      // Add shadow behind the button
                      boxShadow: <BoxShadow> [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 1,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, "/collegeList");
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                      padding: EdgeInsets.all(0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFF00695C), Color(0xFF009698)],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(47)),
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 400, maxHeight: 200),
                          alignment: Alignment.center, //Text placement in the button
                          child: Text(
                            "College List",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
