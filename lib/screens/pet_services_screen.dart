import 'package:auto_size_text/auto_size_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'event_and_competition_screen.dart';

class PetServicesScreen extends StatefulWidget {
  @override
  _PetServicesScreenState createState() => _PetServicesScreenState();
}

class _PetServicesScreenState extends State<PetServicesScreen> {
  List<String> pages = [
    'assets/img15.png',
    'assets/img6.jpg',
    'assets/img_profile.jpg',
    'assets/img3.jpg',
  ];
  List<Events> discoverNewPlaces = new List<Events>();
  List<Events> topServices = new List<Events>();
  List<Events> bestDeals = new List<Events>();
  var currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    discoverNewPlaces.add(Events('assets/img13.jpg', 'Sit n’ Stay',
        'Discount 35% for all ...', '4.8 (233 ratings)'));
    discoverNewPlaces.add(Events('assets/img14.jpg', 'Pawsitive',
        'Discount 50% for all ...', '4.3 (23 ratings)'));
    discoverNewPlaces.add(Events('assets/img13.jpg', 'Sit n’ Stay',
        'Discount 35% for all ...', '4.8 (233 ratings)'));

    topServices.add(Events('assets/pet_services_logo.jpg', 'The Dog Spa',
        'Services ', '4.8 (233 ratings)'));
    topServices.add(Events(
        'assets/logo.jpg', 'Pet -a- Pet', 'Services ', '4.8 (233 ratings)'));
    topServices.add(Events('assets/pet_services_logo.jpg', 'The Dog Spa',
        'Services ', '4.8 (233 ratings)'));

    bestDeals.add(Events('assets/img13.jpg', 'Sit n’ Stay',
        'Discount 35% for all ...', '4.8 (233 ratings)'));
    bestDeals.add(Events('assets/img_popup.png', 'Pawsitive',
        'Discount 50% for all ...', '4.3 (23 ratings)'));
    bestDeals.add(Events('assets/img13.jpg', 'Sit n’ Stay',
        'Discount 35% for all ...', '4.8 (233 ratings)'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Deals'),
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 20),
              child: Image.asset(
                'assets/icon_receipt.png',
                height: 17,
                width: 17,
              ),
            ),
          )
        ],
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
                'Discover new places',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            SizedBox(height: 15),
            _discoverNewPlaces(discoverNewPlaces),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Text(
                'Top Services',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            SizedBox(height: 15),
            _topServices(),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Text(
                'Best Deals',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            SizedBox(height: 15),
            _discoverNewPlaces(bestDeals),
            SizedBox(height: 15),
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

  _discoverNewPlaces(List data) {
    return Container(
      height: 310,
      margin: EdgeInsets.only(left: 25),
      child: ListView.builder(
        itemCount: data.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(right: 13),
            width: 170,
            child: Card(
              color: Colors.black,
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 3,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset(
                              data[index].image,
                              height: 210,
                              width: 170,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 7),
                          child: Image.asset(
                            'assets/promo.png',
                            height: 27,
                            width: 45,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 7),
                          Container(
                            height: 19,
                            child: AutoSizeText(
                              data[index].title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                          SizedBox(height: 7),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'assets/tag.png',
                                height: 15,
                                width: 15,
                              ),
                              SizedBox(width: 5),
                              Flexible(
                                child: AutoSizeText(
                                  data[index].time,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'assets/star.png',
                                height: 15,
                                width: 15,
                              ),
                              SizedBox(width: 5),
                              Flexible(
                                child: AutoSizeText(
                                  data[index].location,
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
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  _topServices() {
    return Container(
      height: 220,
      margin: EdgeInsets.only(left: 30),
      child: ListView.builder(
        itemCount: topServices.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 200,
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.only(left: 35, right: 35, top: 15),
            decoration: BoxDecoration(
              color: Color(0xff393939),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.transparent,
                  child: ClipOval(
                    child: Image.asset(
                      topServices[index].image,
                      fit: BoxFit.cover,
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  topServices[index].title,
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                SizedBox(height: 5),
                Text(
                  topServices[index].time,
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                SizedBox(height: 5),
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/star.png',
                      height: 15,
                      width: 15,
                    ),
                    SizedBox(width: 5),
                    Text(
                      topServices[index].location,
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 24,
                  width: 75,
                  child: RaisedButton(
                    onPressed: () {},
                    color: Color(0xff74d7df),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Visit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
