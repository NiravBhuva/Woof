import 'package:auto_size_text/auto_size_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'challenge_screen.dart';

class EventAndCompetition extends StatefulWidget {
  @override
  _EventAndCompetitionState createState() => _EventAndCompetitionState();
}

class _EventAndCompetitionState extends State<EventAndCompetition> {
  List<String> pages = [
    'assets/img10.jpeg',
    'assets/img6.jpg',
    'assets/img_profile.jpg',
    'assets/img3.jpg',
  ];
  List<String> forYou = [];
  var currentPage = 0;
  List<Events> events = new List<Events>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    events.add(Events('assets/img5.jpg', 'Cat Birthday', '9 Nov - 7 AM',
        'Quezon City, Manila'));
    events.add(Events('assets/img_profile.jpg', 'My Little Pony Meeting',
        '10 Nov - 3 PM', 'MOA, Pasay, Manila'));
    events.add(Events('assets/img7.jpeg', 'Pretty Little Things',
        '10 Oct - 3 PM', 'MOA, Pasay, Manila'));

    forYou = [
      'assets/img10.jpeg',
      'assets/img8.jpeg',
      'assets/img_profile.jpg',
      'assets/img6.jpg',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Events and Competition'),
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
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
              decoration: BoxDecoration(
                  color: Color(0xff2d2c2c),
                  borderRadius: BorderRadius.all(Radius.circular(35))),
              child: TextField(
                style: TextStyle(color: Color(0xff939393), fontSize: 19),
                decoration: InputDecoration(
                  hintText: 'Search here',
                  hintStyle: TextStyle(color: Color(0xff939393), fontSize: 18),
                  prefixIcon: Container(
                    margin: EdgeInsets.only(left: 20, right: 10),
                    child: Icon(
                      Icons.search,
                      size: 27,
                      color: Color(0xff939393),
                    ),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 15),
            _pageView(),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: DotsIndicator(
                dotsCount: pages.length,
                axis: Axis.horizontal,
                position: currentPage.toDouble(),
                decorator: DotsDecorator(
                  size: Size.square(5.0),
                  activeSize: Size(12.0, 5.0),
                  color: Color(0xffc3afaf),
                  activeColor: Color(0xffc3afaf),
                  spacing: EdgeInsets.only(right: 5),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Text(
                'Events',
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
            ),
            SizedBox(height: 15),
            _eventsList(),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChallengeScreen()));
                },
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Color(0XFF1F1F1F),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Center(
                        child: Text(
                          '#',
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'PrettybowChallenge',
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            _challengeRow(forYou),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Color(0XFF1F1F1F),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Center(
                      child: Text(
                        '#',
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'FuncatChallenge',
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            _challengeRow(forYou),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  _pageView() {
    return Container(
      height: 180,
      margin: EdgeInsets.only(left: 15),
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: pages.length,
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 180,
            margin: EdgeInsets.only(right: 15),
            child: Image.asset(
              pages[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }

  _eventsList() {
    return Container(
      height: 205,
      margin: EdgeInsets.only(left: 25),
      child: ListView.builder(
        itemCount: events.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(right: 13),
            width: 120,
            child: Card(
              color: Color(0xff1f1f1f),
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(2), topRight: Radius.circular(2)),
                    child: Image.asset(
                      events[index].image,
                      height: 100,
                      width: 115,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 7),
                        Container(
                          height: 30,
                          child: AutoSizeText(
                            events[index].title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                        SizedBox(height: 7),
                        Row(
                          children: <Widget>[
                            Image.asset('assets/schedule.png', height: 15, width: 15,),
                            SizedBox(width: 5),
                            Flexible(
                              child: AutoSizeText(
                                events[index].time,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                minFontSize: 5,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 7),
                        Row(
                          children: <Widget>[
                            Image.asset('assets/location.png', height: 15, width: 15,),
                            SizedBox(width: 5),
                            Flexible(
                              child: AutoSizeText(
                                events[index].location,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                minFontSize: 5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  _challengeRow(List<String> data) {
    return Container(
      height: 200,
      margin: EdgeInsets.only(left: 30),
      child: ListView.builder(
        itemCount: data.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(right: 7),
            child: Card(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(2)),
                child: Image.asset(
                  data[index],
                  width: 125,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Events {
  String image;
  String title;
  String time;
  String location;

  Events(this.image, this.title, this.time, this.location);
}
