import 'package:flutter/material.dart';

class search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan [800],
        appBar: AppBar(
          backgroundColor: Colors.yellow [800],
          title: Text ("Search"),
            centerTitle: true,
            elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
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
    "UC Berkeley"
  ];
  final RecentColleges = ["Georgia Tech", "Stanford University", "Harvard University", "UT Austin"];
  @override
  List<Widget> buildActions(BuildContext context) {
    // Actions for App Bar
    return [IconButton(icon: Icon(Icons.clear), onPressed: () {
      query = "";
    })];
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
        onPressed: (){
          close(context, null);
        }
    );
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // Results based on search
    //throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Suggestions while searching
    // If user hasn't searched anything, show his recent searches
    final suggestionList = query.isEmpty?RecentColleges:colleges.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.school_outlined),
        title: RichText(
          text: TextSpan(
            text: suggestionList[index].substring(0, query.length),
            style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold
            ),
            children: [
              TextSpan(
                text: suggestionList[index].substring(query.length),
                style: TextStyle(color: Colors.grey[500])
              )
            ]
          ),
        ),
      ),
      itemCount: suggestionList.length,
    );
    //throw UnimplementedError();
  }

}