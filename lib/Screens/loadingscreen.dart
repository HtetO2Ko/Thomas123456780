import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:grab_hand/Screens/homepage.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return HomePage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Grab Hand",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          Column(
            children: [
              Text(
                "1.0.0",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SpinKitThreeBounce(
                color: Colors.black,
                size: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
