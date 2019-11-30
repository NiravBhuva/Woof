import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Marco Alves'),
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      bottomNavigationBar: _bottomNavBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            SizedBox(height: 15),
            _userComment(),
            _othersCommentRow(),
          ],
        ),
      ),
    );
  }

  _bottomNavBar() {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 10,
          right: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/img_btm_chat.png',
            height: 25,
            width: 25,
            color: Colors.grey,
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
              decoration: BoxDecoration(
                color: Color(0xff2d2c2c),
                borderRadius: BorderRadius.all(
                  Radius.circular(35),
                ),
              ),
              child: TextField(
                style: TextStyle(color: Color(0xff939393), fontSize: 17),
                decoration: InputDecoration(
                  hintText: 'Type a message here',
                  hintStyle: TextStyle(
                    color: Color(0xff939393),
                    fontSize: 17,
                  ),
                  contentPadding:
                      EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 25),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Icon(
            Icons.tag_faces,
            color: Colors.grey,
            size: 30,
          ),
        ],
      ),
    );
  }

  _userComment() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: (MediaQuery.of(context).size.width) -
                      (MediaQuery.of(context).size.width / 4) -
                      30,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xff74d7df),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: AutoSizeText(
                    'We should figure out next holiday trip soon, since the summer is almost over...',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Delivered',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _othersCommentRow() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          SizedBox(width: 15),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black,
            child: ClipOval(
              child: Image.asset(
                'assets/img8.jpeg',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: (MediaQuery.of(context).size.width) -
                (MediaQuery.of(context).size.width / 4) -
                30,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15),
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: AutoSizeText(
              "Let's do it! Well, I've always wanted to travel to Paris but haven't been there so far...",
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
