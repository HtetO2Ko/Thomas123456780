import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: TextField(
            style: TextStyle(color: Colors.white),
            controller: _textController,
            decoration: InputDecoration(
              filled: true,
              hintText: 'Search Category',
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                borderSide: BorderSide.none,
              ),
            ),
            onSubmitted: (value) {
            },
            onChanged: (value) {
              setState(() {});
            },
          ),
        ),
        actions: [
          _textController.text == ""
              ? Text("")
              : IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    setState(() {
                      _textController.text = "";
                    });
                  },
                ),
        ],
      ),
    );
  }
}
