import 'package:flutter/material.dart';
import 'package:woof_fini/screens/following_screen.dart';
import 'package:woof_fini/screens/video_screen.dart';

import 'followers_screen.dart';

class OtherProfileScreen extends StatefulWidget {
  @override
  _OtherProfileScreenState createState() => _OtherProfileScreenState();
}

class _OtherProfileScreenState extends State<OtherProfileScreen> {
  List<String> posts = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    posts = [
      'assets/img_profile.jpg',
      'assets/img2.jpg',
      'assets/img3.jpg',
      'assets/img4.jpg',
      'assets/img5.jpg',
      'assets/img6.jpg',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Demi Cat'),
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15, right: 10),
              child: Image.asset(
                'assets/more-vertical.png',
                height: 10,
                width: 10,
                fit: BoxFit.fitHeight,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            SizedBox(height: 20),
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.asset(
                  'assets/img_profile.jpg',
                  fit: BoxFit.cover,
                  height: 120,
                  width: 120,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Demi Cat',
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
            ),
            SizedBox(height: 5),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Scottish Fold',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(width: 5),
                  Image.asset(
                    'assets/Path 2355.png',
                    height: 13,
                    width: 13,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Text(
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        )),
                    child: Container(
                      margin: EdgeInsets.only(
                          top: 5, bottom: 5, left: 10, right: 10),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/Path 2360.png',
                            height: 16,
                            width: 16,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Message',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(
                          top: 5, bottom: 5, left: 10, right: 10),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/Group 2491.png',
                            height: 12,
                            width: 12,
                            color: Colors.white,
                          ),
                          Image.asset(
                            'assets/Group 2492.png',
                            height: 16,
                            width: 16,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Follow',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '6',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Post',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 25),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FollowersScreen()));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '45K',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Followers',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FollowingScreen()));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '298',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Following',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin:
                    EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'BGC, Manila',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/Group 2493.png',
                    height: 22,
                    width: 22,
                    color: Colors.white,
                  ),
                  SizedBox(width: 20),
                  Image.asset(
                    'assets/twitter.png',
                    height: 22,
                    width: 22,
                    color: Colors.white,
                  ),
                  SizedBox(width: 20),
                  Image.asset(
                    'assets/instagram.png',
                    height: 22,
                    width: 22,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            _posts(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  _posts() {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 0.65,
        crossAxisSpacing: 7,
        mainAxisSpacing: 7,
        children: new List<Widget>.generate(
          posts.length,
              (index) {
            return GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => VideoScreen()));
              },
              child: new Card(
                child: Image.asset(
                  posts[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
