import 'package:flutter/material.dart';
import 'package:college_app/Pages/collegePage.dart';
class collegeList extends StatefulWidget {
  @override
  _collegeListState createState() => _collegeListState();
}

class _collegeListState extends State<collegeList> {
  // BACK END CODE
  List<CollegePage> colleges = [
    CollegePage(name: "Harvard", location: "Massachusetts", logo: "harvard.png"),
    CollegePage(name: "Georgia Tech", location: "Georgia", logo: "georgiaTech.png"),
    CollegePage(name: "Georgia State", location: "Georgia", logo: "georgiaState.png"),
    CollegePage(name: "UT Austin", location: "Texas", logo: "UtAustin.png"),
    CollegePage(name: "University of Texas at Dallas", location: "Texas", logo: "utd.png"),
    CollegePage(name: "Stanford", location: "California", logo: "stanford.png")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan [800],
      appBar: AppBar(
        backgroundColor: Colors.yellow [800],
        title: Text ("Choose College"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: colleges.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: (){
                    Navigator.pushNamed(context, "/collegePage");
                  },
                  title: Text(colleges[index].name),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("Images/gatech_logo.jpg"),
                  ),
                ),
              ),
            );
          },
      ),
    );

  }
}
