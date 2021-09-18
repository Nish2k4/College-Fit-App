import 'package:flutter/material.dart';
import 'package:college_app/Pages/collegePage.dart';
class collegeList extends StatefulWidget {
  @override
  _collegeListState createState() => _collegeListState();
}

class _collegeListState extends State<collegeList> {
  // BACK END CODE
  List<CollegePage> colleges = [
    CollegePage(name: "Georgia Tech", link: "/collegePage", logo: "georgiaTech.png"),
    CollegePage(name: "University of Georgia", link: "/ugaPage", logo: "uga.png"),
    CollegePage(name: "Georgia State University", link: "/gsuPage", logo: "gsu.png"),
    //CollegePage(name: "UT Austin", link: "", logo: "UtAustin.png"),
    //CollegePage(name: "University of Texas at Dallas", link: "", logo: "utd.png"),
    //CollegePage(name: "Stanford", link: "", logo: "stanford.png")
  ];
  void UpdateCollege(index){
    CollegePage instance = colleges[index];
    Navigator.pop(context, {
      "logo": instance.logo,
    });
  }
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
                    Navigator.pushNamed(context, "${colleges[index].link}");
                    //UpdateCollege(index);
                  },
                  title: Text(colleges[index].name),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('Images/${colleges[index].logo}'),
                  ),
                ),
              ),
            );
          },
      ),
    );

  }
}
