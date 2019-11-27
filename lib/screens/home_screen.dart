import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:rubber/rubber.dart';
import 'package:woof_fini/screens/camera_screen.dart';
import 'package:woof_fini/screens/notification_screen.dart';
import 'package:woof_fini/screens/other_profile_screen.dart';
import 'package:woof_fini/screens/search_screen.dart';
import 'package:woof_fini/screens/user_profile_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  RubberAnimationController _controller;

  bool isShowComment = false;

  @override
  void initState() {
    // TODO: implement initState
    _controller = RubberAnimationController(
        vsync: this,
        dismissable: true,
        lowerBoundValue: AnimationControllerValue(pixel: 0),
        upperBoundValue: AnimationControllerValue(pixel: 450),
        duration: Duration(milliseconds: 200));

    _controller.addListener((){
      print(_controller.value);
      if(_controller.value == 0){
        setState(() {
          isShowComment = false;
        });
      }else{
        setState(() {
          isShowComment = true;
        });
      }
    });

//    _controller.addStatusListener((status){
//      if(status == AnimationStatus.dismissed){
//        setState(() {
//          isShowComment = false;
//        });
//      }
//    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: isShowComment ? Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Container(
          height: 55,
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 15, right: 10),
                child: Icon(
                  Icons.tag_faces,
                  color: Color(0xff707070),
                ),
              ),
              Flexible(
                child: TextField(
                  style: TextStyle(color: Color(0xff707070)),
                  decoration: InputDecoration(
                      hintText: 'Add a new comment',
                      hintStyle: TextStyle(color: Color(0xff707070)),
                      border: InputBorder.none
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 15),
                child: Icon(
                  Icons.send,
                  color: Color(0xff707070),
                ),
              ),
            ],
          ),
        ),
      ) : Container(height: 0),
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
              'assets/img2.jpg',
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
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserProfileScreen()));
                      },
                      child: CircleAvatar(
                        radius: 18,
                        child: ClipOval(
                          child: Image.asset('assets/img8.jpeg'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 17),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SearchScreen()));
                    },
                    child: Container(
                      height: 25,
                      child: Image.asset('assets/Group 2490.png'),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SearchScreen()));
                      },
                      child: Text(
                        'Explore',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ),
                  //Spacer(),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NotificationScreen()));
                    },
                    child: Container(
                      height: 20,
                      child: Image.asset('assets/Group 2489.png'),
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CameraScreen()));
                    },
                    child: Container(
                      height: 20,
                      child: Image.asset('assets/Group 2488.png'),
                    ),
                  ),
                  SizedBox(width: 15),
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
                          onTap: _expand,
                          child: Container(
                            height: 30,
                            child: Image.asset(
                              'assets/Path 2357.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Text(
                          '134',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
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
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OtherProfileScreen()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 2.5, color: Colors.white),
                              borderRadius: BorderRadius.all(Radius.circular(24)),
                            ),
                            child: CircleAvatar(
                              radius: 22,
                              child: ClipOval(
                                child: Image.asset('assets/img6.jpg'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 7),
                        Text(
                          'SukiTheCat',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Spacer(),
                        FlatButton(
                          onPressed: () {
                            //Navigator.of(context).pop();
                          },
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
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Text(
                          '12K views',
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
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ],
          ),
        ),
        RubberBottomSheet(
          lowerLayer: Container(),
          upperLayer: _commentView(),
          animationController: _controller,
        ),
      ],
    );
  }

  void _expand() {
    _controller.launchTo(_controller.value, _controller.upperBound,
        velocity: 2);
    setState(() {
      isShowComment = true;
    });

  }

  void _collapse() {
    setState(() {
      isShowComment = false;
    });
    _controller.launchTo(_controller.value, _controller.lowerBound,
        velocity: 2);
  }

  Widget _commentView() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.89),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(width: 20),
                Text(
                  '134 comments',
                  style: TextStyle(color: Colors.black, fontSize: 13),
                ),
                GestureDetector(
                  onTap: _collapse,
                  child: Container(
                    margin: EdgeInsets.all(3),
                    child: Icon(
                      Icons.close,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          _commentRow(),
        ],
      ),
    );
  }

  _commentRow() {
    return Container(
      height: 365,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.transparent,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/img10.jpeg',
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Song Bao',
                          style: TextStyle(fontSize: 16),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Flexible(
                              child: Container(
                                margin: EdgeInsets.only(right: 5),
                                child: AutoSizeText(
                                  'can you please share thegradient part just for mobile wallpaper',
                                  style: TextStyle(
                                      fontSize: 13, color: Color(0xff707070)),
                                  minFontSize: 5,
                                  maxLines: 2,
                                ),
                              ),
                            ),
                            Text(
                              '2 minutes ago',
                              style: TextStyle(fontSize: 11),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
