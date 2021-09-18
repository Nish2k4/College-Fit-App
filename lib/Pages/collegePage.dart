import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter_html/flutter_html.dart';

class CollegePage{

  String name; // Name of the college
  String link; // Location of the college
  String logo; // Logo of the college

  CollegePage({this.name, this.link, this.logo});
}

class collegePage extends StatefulWidget {
  @override
  _collegePageState createState() => _collegePageState();
}




class _collegePageState extends State<collegePage> {

final htmlData = r"""
  <h3> There are various options for student living. Some of the living options are on-campus while some a few minutes away from campus. Here is an extensive list of the residence halls: <a> https://housing.gatech.edu/explore-our-residence-halls </a></h3>
""";


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
                        "Acceptance Rate: 21%",
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
                        icon: Icon(Icons.map, color: Colors.lightGreen,),
                      ),
                      Text(
                        "Area: Urban",
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
                            "The Georgia Institute of Technology is a top 10 public research university with nearly 40,000 students who study in person at the main campus in Atlanta, at Georgia Tech-Lorraine in France, at Georgia Tech-Shenzhen in China, as well as through distance and online learning.",
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
                        "Popular Majors",
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
                            "1. Engineering\n2. Computer Science\n3. Business\n4. Biology\n5. Physics",
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
                          child: Html(
                            data: htmlData,
                            style: {
                              "h3": Style(
                                color: Color.fromRGBO(244, 244, 244, 1),
                              ),
                              "a": Style(
                                color: Color.fromRGBO(62, 158, 199, 1),
                              )
                            },
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
                            "1. Tech Trolley\n2. Stingerette Paratransit\n3. Stinger Buses\n4. Midnight Rambler\n5. Emory Shuttle\n6. Stingerette Nighttime Shuttle\n7. Charter Bus Rental Services\n8. NARA/TEP Shuttle\n9. Weekend Grocery Shuttle",
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
                            "Here is a link to an extensive list of the eating option at Georgia Tech: https://dining.gatech.edu/home",
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
                            "Georgia Residents: Approximately \$22,912 to \$31,898\nNon-Georgia Residents: Approximately \$44,024 to \$53,010",
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
                        "Major Attractions Nearby",
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
                            "World of Coca-Cola\nGeorgia Aquarium\nNational Center for Civil and Human Rights",
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
