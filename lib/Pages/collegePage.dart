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
            ],
          ),
        ),
      ),
    );
  }

}



class expand extends StatelessWidget {
  List<ExpansionItem> items = <ExpansionItem> [
    ExpansionItem(header: "Overview", body: "First Description"),
    ExpansionItem(header: "More Info", body: "Second Description"),
    ExpansionItem(header: "More Info", body: "Third Description"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() { // Press on panel to expand
                  // Set boolean value to the opposite of itself using !
                  items[index].isExpanded = !items[index].isExpanded;
                });
              },
              children: items.map((ExpansionItem item) { // Loop through the list of panel date and find the data on the panel the user clicks on
                return ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Container( // Display header of the panel
                        child: Text(item.header),
                      );
                    },
                    isExpanded: item.isExpanded, // Show body only if expanded is true
                    body: Container( // Display body
                      child: Text(item.body),
                    )
                );
              }).toList(),
            )
          ],
        )
    );
  }
}

class ExpansionItem {
  bool isExpanded;
  final String header;
  final String body;

  ExpansionItem({this.isExpanded: false, this.header, this.body});
}
