import 'package:flutter/material.dart';
import 'package:grab_hand/Screens/emailsend.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        centerTitle: true,
        title: Text(
          "About Us",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      launch("tel://09258259091");
                    });
                  },
                  child: Card(
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.call,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("09259259091"),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EmailScreen(),
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.mail,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("tastysoft.outsourcing@gmail.com"),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        launch("https://www.facebook.com/tastysoft/");
                      });
                    },
                    child: Image.asset(
                      'images/facebook.png',
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 0.05,
                      fit: BoxFit.cover,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        launch(
                            "https://www.youtube.com/channel/UCsD__OnNxJJK7vdjCYPIoFQ/about");
                      });
                    },
                    child: Image.asset(
                      'images/youtube.jpg',
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 0.05,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/facebookqrcode.png',
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.07,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/youtubeqrcode.png',
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.07,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
