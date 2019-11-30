import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class LeaderboardScreen extends StatefulWidget {
  @override
  _LeaderboardScreenState createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  List<String> chips = ['Daily', 'Weekly', 'Monthly', 'Totally'];
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Leaderboard'),
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            _chipsRow(),
            SizedBox(height: 20),
            _body(),
          ],
        ),
      ),
    );
  }

  _chipsRow() {
    return Container(
      height: 50,
      margin: EdgeInsets.only(left: 5),
      alignment: Alignment.center,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: chips.length,
        itemBuilder: (BuildContext, index) {
          return Container(
            padding: EdgeInsets.only(right: index == chips.length - 1 ? 0 : 8),
            child: ActionChip(
              onPressed: () {
                setState(() {
                  selected = index;
                });
              },
              elevation: 0,
              pressElevation: 0,
              shadowColor: Colors.black,
              backgroundColor:
                  index == selected ? Color(0xff707070) : Colors.black,
              labelPadding: EdgeInsets.symmetric(horizontal: 12),
              label: Text(
                chips[index],
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }

  _body() {
    return Container(
      child: Column(
        children: <Widget>[
          _topThree(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 12,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: index == 0 ? 25 : 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            '${index + 4}',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/img6.jpg',
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          AutoSizeText(
                            'Jack & Jill',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            minFontSize: 5,
                            maxLines: 1,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/love.png',
                            height: 15,
                            width: 15,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 7),
                          Text(
                            '1063294',
                            style: TextStyle(
                                color: Color(0xffed4a47),
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 25,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  _topThree() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(
                  'assets/crown.png',
                  height: 50,
                  width: 70,
                  fit: BoxFit.contain,
                  color: Colors.white,
                ),
                Container(
                  transform: Matrix4.translationValues(1, -17, 1),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 3.0,
                      color: Colors.white,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.black,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/img3.jpg',
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Clarke',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                Image.asset(
                  'assets/love.png',
                  height: 20,
                  width: 20,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 7),
                Text(
                  '1063294',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
        SizedBox(width: 20),
        Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(
                  'assets/crown.png',
                  height: 50,
                  width: 70,
                  fit: BoxFit.contain,
                ),
                Container(
                  transform: Matrix4.translationValues(1, -15, 1),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 4.0,
                      color: Color(0xfff6ae0d),
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.black,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/img5.jpg',
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Rosco',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                Image.asset(
                  'assets/love.png',
                  height: 20,
                  width: 20,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 7),
                Text(
                  '1263294',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
        SizedBox(width: 20),
        Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(
                  'assets/crown.png',
                  height: 50,
                  width: 70,
                  fit: BoxFit.contain,
                  color: Color(0xfff86b00),
                ),
                Container(
                  transform: Matrix4.translationValues(1, -17, 1),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 3.0,
                      color: Color(0xfff86b00),
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.black,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/img8.jpeg',
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Forrest',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                Image.asset(
                  'assets/love.png',
                  height: 20,
                  width: 20,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 7),
                Text(
                  '102632',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ],
    );
  }
}
