import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';

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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Georgia Tech",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.dotted,
                        decorationColor: Colors.amber,
                        decorationThickness: 1.0,
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
                        icon: Icon(Icons.location_city_outlined, color: Colors.white,),
                      ),
                      Text(
                        "Atlanta, Georgia",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.cake_sharp, color: Colors.pink [200],),
                      ),
                      Text(
                        "October 13, 1885",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget> [
                      IconButton(
                        icon: Icon(Icons.circle, color: Colors.lime,),
                      ),
                      Text(
                        "Public University",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            )
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.school, color: Colors.blue [200],),
                      ),
                      Text(
                        "Graduation Rate: 86.2%",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.monetization_on, color: Colors.green [500],),
                      ),
                      Text(
                        "Average Tuition: \$12,600 - \$34,000",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.map, color: Colors.yellowAccent,),
                      ),
                      Text(
                        "Area: Downtown / Urban",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                      collapsedBackgroundColor: Colors.black54,
                      backgroundColor: Colors.black,
                      title: Text(
                        "Overview",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber
                        ),
                      ),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                      collapsedBackgroundColor: Colors.black54,
                      backgroundColor: Colors.black,
                      title: Text(
                        "Prerequisites",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber
                        ),
                      ),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                      collapsedBackgroundColor: Colors.black54,
                      backgroundColor: Colors.black,
                      title: Text(
                        "Top 5 Majors",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber
                        ),
                      ),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                      collapsedBackgroundColor: Colors.black54,
                      backgroundColor: Colors.black,
                      title: Text(
                        "Student Living",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber
                        ),
                      ),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                      collapsedBackgroundColor: Colors.black54,
                      backgroundColor: Colors.black,
                      title: Text(
                        "Transportation",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber
                        ),
                      ),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                      collapsedBackgroundColor: Colors.black54,
                      backgroundColor: Colors.black,
                      title: Text(
                        "Eating Options",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber
                        ),
                      ),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                      collapsedBackgroundColor: Colors.black54,
                      backgroundColor: Colors.black,
                      title: Text(
                        "Weather",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber
                        ),
                      ),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                      collapsedBackgroundColor: Colors.black54,
                      backgroundColor: Colors.black,
                      title: Text(
                        "College Tuition",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber
                        ),
                      ),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                      collapsedBackgroundColor: Colors.black54,
                      backgroundColor: Colors.black,
                      title: Text(
                        "Major Attraction Nearby",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber
                        ),
                      ),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}

