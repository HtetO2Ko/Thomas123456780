import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class GrabHandList extends StatefulWidget {
  String title;
  GrabHandList({Key key, this.title}) : super(key: key);

  @override
  State<GrabHandList> createState() => _GrabHandListState();
}

class _GrabHandListState extends State<GrabHandList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        Column(
          children: [
            SpinKitRing(color: Colors.black54),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text("Loading..."),
          ],
        ),
      ],
    );
  }
}
