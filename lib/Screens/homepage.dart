import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:grab_hand/Componments/grabHandList.dart';
import 'package:grab_hand/Screens/searchScreen.dart';
import 'package:grab_hand/widget/navDrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text("Grab Hand"),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchScreen(),
                ),
              );
            },
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            GrabHandList(
              title: "Category",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            GrabHandList(
              title: "Resently Added",
            ),
          ],
        ),
      ),
    );
  }
}
