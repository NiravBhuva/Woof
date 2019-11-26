import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class VideoPlayScreen extends StatefulWidget {
  @override
  _VideoPlayScreenState createState() => _VideoPlayScreenState();
}

class _VideoPlayScreenState extends State<VideoPlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height,
          child: Opacity(
            opacity: 0.85,
            child: Image.asset(
              'assets/img5.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'assets/Shadow.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 40),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 30,
                          child: Image.asset(
                            'assets/Path 2358.png',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Text(
                          '1234',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                        SizedBox(height: 25),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 30,
                            child: Image.asset(
                              'assets/Path 2360.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 5,right: 50, bottom: 15),
                      child: AutoSizeText(
                        'It’s winter in the Okanagan, which means the temperatures are starting to drop.  It’s winter in the Okanagan, which',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                        ),
                        maxLines: 5,
                        minFontSize: 4,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 2.5, color: Colors.white),
                              borderRadius: BorderRadius.all(Radius.circular(24)),
                            ),
                            child: CircleAvatar(
                              radius: 22,
                              child: ClipOval(
                                child: Image.asset('assets/img8.jpeg'),
                              ),
                            ),
                          ),
                          SizedBox(width: 7),
                          Text(
                            'Busky',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Spacer(),
                          FlatButton(
                            onPressed: () {},
                            padding: EdgeInsets.zero,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.only(
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
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        children: <Widget>[
                          Text(
                            '121K views',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: <Widget>[
                              Container(
                                height: 12,
                                child: Image.asset('assets/Path 2359.png'),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                'Repost',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: <Widget>[
                              Container(
                                height: 12,
                                child: Image.asset('assets/Share.png'),
                              ),
                              SizedBox(width: 2),
                              Text(
                                'Share',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
