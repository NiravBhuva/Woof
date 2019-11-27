import 'package:auto_size_text/auto_size_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:woof_fini/custom/my_rating.dart';

class GmapPlaceScreen extends StatefulWidget {
  @override
  _GmapPlaceScreenState createState() => _GmapPlaceScreenState();
}

class _GmapPlaceScreenState extends State<GmapPlaceScreen> {
  List<Place> data = new List<Place>();
  String text =
      """Tiendesitas is a shopping complex located along the C-5 road corner Eulogio Rodriguez, Jr. Avenue in Ugong, Pasig. It began its operations on September 26, 2005 and was developed by Ortigas & Company Limited Partnership. It rivals the highly successful and world-renowned Chatuchak Market""";

  int currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data.add(Place('Tiendesitas', 'Mall', text, 'C-5 Las Fiestas, Pasig',
        'Open. Closes Midnight', '19-159-2993', 'www.grillzcafe.in'));
    data.add(Place('Tiendesitas', 'Mall', text, 'C-5 Las Fiestas, Pasig',
        'Open. Closes Midnight', '19-159-2993', 'www.grillzcafe.in'));
    data.add(Place('Tiendesitas', 'Mall', text, 'C-5 Las Fiestas, Pasig',
        'Open. Closes Midnight', '19-159-2993', 'www.grillzcafe.in'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        centerTitle: true,
//        backgroundColor: Colors.black,
//        leading: GestureDetector(
//          onTap: () {
//            Navigator.of(context).pop();
//          },
//          child: Icon(Icons.arrow_back_ios),
//        ),
//      ),
      body: PageView.builder(
        itemCount: 3,
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.black,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.asset(
                      'assets/img6.jpg',
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 260,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ListTile(
                            leading: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.transparent,
                            ),
                            title: Container(
                              alignment: Alignment.center,
                              child: DotsIndicator(
                                dotsCount: 3,
                                axis: Axis.horizontal,
                                position: currentPage.toDouble(),
                                decorator: DotsDecorator(
                                  size: Size.square(8.0),
                                  activeSize: Size(16.0, 8.0),
                                  color: Colors.transparent,
                                  activeColor: Colors.white,
                                  spacing: EdgeInsets.only(right: 5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side: BorderSide(
                                        color: Colors.white, width: 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    AutoSizeText(
                                      data[index].title,
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                      ),
                                      maxLines: 1,
                                      minFontSize: 20,
                                    ),
                                    SizedBox(height: 5),
                                    AutoSizeText(
                                      data[index].type,
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                      maxLines: 1,
                                      minFontSize: 10,
                                    ),
                                  ],
                                ),
                                RatingBar(
                                  glow: false,
                                  itemSize: 35,
                                  initialRating: 4,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  itemCount: 5,
                                  ratingWidget: RatingWidget(
                                    full: Image.asset('assets/star.png'),
                                    empty: Image.asset(
                                      'assets/star.png',
                                      color: Colors.white,
                                    ),
                                  ),
                                  itemPadding: EdgeInsets.only(left: 2),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  height: 120,
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Color(0xff393939),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 12),
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35)),
                                color: Colors.black,
                              ),
                              padding: EdgeInsets.all(13),
                              child: Image.asset(
                                'assets/Directions.png',
                                height: 30,
                                width: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Directions',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Flexible(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 12),
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35)),
                                color: Colors.black,
                              ),
                              padding: EdgeInsets.only(
                                  left: 13, right: 13, top: 15, bottom: 11),
                              child: Image.asset(
                                'assets/Location Arrow.png',
                                height: 30,
                                width: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Start',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Flexible(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 12),
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35)),
                                color: Colors.black,
                              ),
                              padding: EdgeInsets.all(20),
                              child: Image.asset(
                                'assets/call.png',
                                height: 30,
                                width: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Call',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  //height: 500,
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Color(0xff393939),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 25),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              'assets/Group 2500.png',
                              height: 20,
                              width: 20,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 10),
                            Flexible(
                                child: Text(
                              data[index].desc,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ))
                          ],
                        ),
                      ),
                      SizedBox(height: 35),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              'assets/location.png',
                              height: 25,
                              width: 25,
                              fit: BoxFit.fitHeight,
                            ),
                            SizedBox(width: 10),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    data[index].loc,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'Metro Manila',
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
                      SizedBox(height: 25),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              'assets/schedule.png',
                              height: 25,
                              width: 25,
                              fit: BoxFit.fitHeight,
                            ),
                            SizedBox(width: 10),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    data[index].time,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'Christmas might affect opening hours',
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
                      SizedBox(height: 25),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              'assets/call.png',
                              height: 25,
                              width: 25,
                              fit: BoxFit.fitHeight,
                            ),
                            SizedBox(width: 10),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    data[index].num,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    '295-353-2421',
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
                      SizedBox(height: 25),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              'assets/Earth.png',
                              height: 25,
                              width: 25,
                              fit: BoxFit.fitHeight,
                            ),
                            SizedBox(width: 10),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    data[index].site,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'Grillz Cafe',
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
                      SizedBox(height: 25),
                    ],
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Place {
  String title;
  String type;
  String desc;
  String loc;
  String time;
  String num;
  String site;

  Place(this.title, this.type, this.desc, this.loc, this.time, this.num,
      this.site);
}
