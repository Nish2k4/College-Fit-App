import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter_html/flutter_html.dart';

class gsuPage extends StatefulWidget {
  @override
  _gsuPageState createState() => _gsuPageState();
}

class _gsuPageState extends State<gsuPage> {
  final htmlData = r"""
    <h3> There are various options for student living. Some of the living options are on-campus while some a few minutes away from campus. Here is a link for further information: <a> https://myhousing.gsu.edu/#greek-town-houses </a></h3>

    """;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan [800],
      appBar: AppBar(
        backgroundColor: Colors.yellow [800],
        title: Text ("GSU"),
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
                      "Georgia State University",
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
                        "1913",
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
                        "Acceptance Rate: 76%",
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
                        icon: Icon(Icons.map, color: Colors.yellowAccent,),
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
                            "The Georgia Institute of Technology is a top 10 public research university with nearly 40,000 students who study",
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
                            "1. Business\n2. Social Sciences\n3. Psychology\n4. Computer Science\n5. Biology",
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
                              "h2": Style(
                                color: Color.fromRGBO(200, 0, 0, 1),
                              ),
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
                            "Panther Express",
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
                            "Here is a link to an extensive list of the eating options at GSU: https://dining.gsu.edu/locations-and-hours/dining-halls/",
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
                            "Georgia Residents: Average tuition is \$11,076\nNon-Georgia Residents: Average tuition is \$30,114",
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
                            "Georgia Aquarium\nNational Center for Civil and Human Rights\nWorld of Coca-Cola",
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
                        "Resources",
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
                            "https://www.usnews.com/best-colleges/university-of-georgia-1598",
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
