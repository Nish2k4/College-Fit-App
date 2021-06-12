import 'package:flutter/material.dart';

class search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo [800],
          title: Text ("Search"),
            centerTitle: true,
            elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
    );
  }
}
class DataSearch extends SearchDelegate <String> { // SearchDelegate is the searching library
  final colleges = [
    "Georgia Tech",
    "Georgia State",
    "Harvard",
    "UT Austin",
    "Stanford",
    "Princeton University",
    "University of Texas at Dallas",
    "University of North Georgia",
    "Kennesaw State University",
    "UC Santa Barbara",
    "Amherst University",
    "UC Berkley"
  ];
  final RecentColleges = ["Georgia Tech"];
  @override
  List<Widget> buildActions(BuildContext context) {
    // Actions for App Bar
    return [IconButton(icon: Icon(Icons.clear), onPressed: () {})];
    throw UnimplementedError();
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Leading icon of the left arrow
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: (){}
    );
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // Results based on search
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Suggestions while searching
    // If user hasn't searched anything, show his recent searches
    final suggestionList = query.isEmpty?RecentColleges:colleges;
    throw UnimplementedError();
  }

}