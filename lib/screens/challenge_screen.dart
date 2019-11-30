import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:woof_fini/screens/leaderboard_screen.dart';

class ChallengeScreen extends StatefulWidget {
  @override
  _ChallengeScreenState createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  String text =
      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr";
  List<String> trending = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    trending = [
      'assets/img6.jpg',
      'assets/img_profile.jpg',
      'assets/img4.jpg',
      'assets/img11.jpg',
      'assets/img10.jpeg',
      'assets/img3.jpg',
      'assets/img2.jpg',
      'assets/img5.jpg',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => LeaderboardScreen()));
            },
            child: Container(
              margin: EdgeInsets.only(right: 25),
              child: Image.asset(
                'assets/trophy.png',
                height: 30,
                width: 30,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/logo.jpg',
                    width: 120,
                    height: 170,
                    fit: BoxFit.cover,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 5),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                color: Color(0XFF1F1F1F),
                                borderRadius:
                                BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Center(
                                child: Text(
                                  '#',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 19),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Container(
                                child: AutoSizeText(
                                  'PrettybowChallenge',
                                  style: TextStyle(color: Colors.white, fontSize: 19),
                                  minFontSize: 5,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50, top: 15),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.remove_red_eye,
                              color: Colors.white,
                              size: 16,
                            ),
                            SizedBox(width: 7),
                            Text(
                              '12M views',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        width: MediaQuery.of(context).size.width - 190,
                        //width: constraints.biggest.width - 30,
                        margin: EdgeInsets.only(left: 20),
                        child: AutoSizeText(
                          text,
                          style: TextStyle(color: Colors.white, fontSize: 11),
                          minFontSize: 5,
                          maxLines: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            _trending(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  _trending() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 3,
        childAspectRatio: 0.65,
        crossAxisSpacing: 7,
        mainAxisSpacing: 7,
        children: new List<Widget>.generate(
          trending.length,
          (index) {
            return new Card(
              child: Image.asset(
                trending[index],
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
