import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int selected = 0;

  List<String> row1 = [
    'assets/img8.jpeg',
    'assets/img_profile.jpg',
  ];
  List<String> row2 = [
    'assets/img_profile.jpg',
    'assets/img11.jpg',
    'assets/img7.jpeg',
    'assets/img3.jpg',
    'assets/img8.jpeg',
  ];
  List<String> row3 = [
    'assets/img11.jpg',
    'assets/img_profile.jpg',
  ];
  List<String> row4 = [
    'assets/img10.jpeg',
    'assets/img6.jpg',
    'assets/img_profile.jpg',
    'assets/img3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Notifications'),
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: (){},
            child: selected == 1 ? Container(
              height: 25,
              width: 25,
              margin: EdgeInsets.only(right: 15),
              child: Image.asset('assets/create_new.png'),
            ) : Container(),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10),
            _segmentedControl(),
            SizedBox(height: 50),
            selected == 0
                ? Column(
                    children: <Widget>[
                      _commentOrLikeRow(
                          'assets/img6.jpg', 'userone liked 7 Videos', row1),
                      _followingRow(
                          'assets/img5.jpg', 'started to following you.'),
                      _commentOrLikeRow(
                          'assets/img7.jpeg', 'userthree liked 5 videos', row2),
                      _commentOrLikeRow('assets/img6.jpg',
                          'userfour commented on your video', row3),
                      _commentOrLikeRow(
                          'assets/img8.jpeg', 'usersix liked 5 photos', row4),
                    ],
                  )
                : Column(
                    children: <Widget>[
                      _messages('assets/img6.jpg', 'Marco Alves', 'How r u?',
                          '24m ago'),
                      //SizedBox(height: 5),
                      _messages('assets/img10.jpeg', 'Bonelwa Ngqawana',
                          'What do you do in your free time?', '2h ago'),
                      //SizedBox(height: 5),
                      _messages('assets/img3.jpg', 'Nombeko Mabandla',
                          'Why did you call me?', 'yesterday'),
                      //SizedBox(height: 5),
                      _messages('assets/img2.jpg', 'Keith Mills',
                          'Are you available tonight?', 'yesterday'),
                    ],
                  ),
          ],
        ),
      ),
    );
  }

  _segmentedControl() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: CupertinoSegmentedControl(
        children: {
          0: Container(
            margin: EdgeInsets.only(bottom: 11, top: 8),
            child: Text(
              'Notifications',
              style: TextStyle(
                color: selected == 1 ? Color(0xff707070) : Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          1: Container(
            margin: EdgeInsets.only(bottom: 11, top: 8),
            child: Text(
              'Messages',
              style: TextStyle(
                color: selected == 0 ? Color(0xff707070) : Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        },
        onValueChanged: (int val) {
          setState(() {
            selected = val;
          });
        },
        groupValue: selected,
        borderColor: Color(0xff393939),
        pressedColor: Colors.white,
        selectedColor: Colors.black,
        unselectedColor: Colors.white,
      ),
    );
  }

  _commentOrLikeRow(String profilePic, String line, List<String> images) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: 21,
            backgroundColor: Colors.white,
            child: ClipOval(
              child: Image.asset(
                profilePic,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 8),
              Container(
                width: MediaQuery.of(context).size.width - 130,
                child: Text(
                  line,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              SizedBox(height: 8),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width - 105,
                child: ListView.builder(
                  itemCount: images.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 65,
                      width: 65,
                      margin: EdgeInsets.only(right: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _followingRow(String profilePic, String line) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: 21,
            child: ClipOval(
              child: Image.asset(profilePic, height: 50, width: 50, fit: BoxFit.cover,),
            ),
          ),
          SizedBox(width: 20),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Text(
              line,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              'Follow',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }

  _messages(String image, String name, String msg, String time) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 35),
      child: Slidable(
        actionPane: SlidableDrawerActionPane(),
        actionExtentRatio: 0.25,
        secondaryActions: <Widget>[
          IconSlideAction(
            color: Color(0xff393939),
            iconWidget: Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(38)),
                color: Colors.red,
              ),
              padding: EdgeInsets.all(9),
              child: Image.asset('assets/delete.png'),
            ),
            onTap: () {},
          ),
        ],
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 31,
              child: ClipOval(
                child: Image.asset(
                  image,
                  height: 70,
                  width: 70,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 7),
                  Text(
                    name,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 7),
                  Text(
                    msg,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.only(left: 10, top: 5),
                child: AutoSizeText(
                  time,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  minFontSize: 5,
                  maxLines: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
