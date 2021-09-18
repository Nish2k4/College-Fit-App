import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter_html/flutter_html.dart';

class kennesawPage extends StatefulWidget {
  @override
  _kennesawPageState createState() => _kennesawPageState();
}

class _kennesawPageState extends State<kennesawPage> {
  final htmlData = r"""
  <h2> Here is a link with information about residence halls and living on campus: https://ksuhousing.kennesaw.edu/first-year/options.php </h2>
    """;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan [800],
      appBar: AppBar(
        backgroundColor: Colors.yellow [800],
        title: Text ("Kennesaw"),
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
                      "Kennesaw State University",
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
                        "Kennesaw, Georgia",
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
                        "October 9, 1963",
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
                        "Acceptance Rate: 83%",
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
                        "Area: Suburban",
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
                            "1. Psychology\n2. Liberal Arts and Humanities\n3. Business\n4. Mechanical Engineering\n5. Accounting",
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
                            "1. Central Loop\n2. North South Connector\n3. East Campus Shuttle\n4. West Campus Shuttle\n5. Arch Express\n6. Bulldog Housing\n7. Park & Ride\n8. Vet Med\n9. Health Sciences\n10. Milledge Avenue\n11. Greenhouse Shuttle\n12. Prince-Milledge (PM)\n13. Night Campus (NC)\n14. Weekender (WE)",
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
                            "Here is a link to an extensive list of the eating options at UGA: https://dining.uga.edu",
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
                            "Georgia Residents: Average tuition is \$12,682\nNon-Georgia Residents: Average tuition is \$33,794",
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
                            "Georgia Museum of Art\nState Botanical Garden of Georgia",
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
                            "https://www.niche.com/colleges/kennesaw-state-university/majors/",
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
