import 'package:flutter/material.dart';
import 'package:college_app/Pages/collegePage.dart';
class test extends StatefulWidget {
  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {
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