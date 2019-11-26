import 'package:auto_size_text/auto_size_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'event_and_competition_screen.dart';

class PetFoodScreen extends StatefulWidget {
  @override
  _PetFoodScreenState createState() => _PetFoodScreenState();
}

class _PetFoodScreenState extends State<PetFoodScreen> {
  List<String> pages = [
    'assets/img10.jpeg',
    'assets/img6.jpg',
    'assets/img_profile.jpg',
    'assets/img3.jpg',
  ];
  List<Events> recommendedFood = new List<Events>();
  var currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recommendedFood.add(Events('assets/img9.png', 'Sit n’ Stay',
        'Discount 35% for all ...', '4.8 (233 ratings)'));
    recommendedFood.add(Events('assets/img9.png', 'Pawsitive',
        'Discount 50% for all ...', '4.3 (23 ratings)'));
    recommendedFood.add(Events('assets/img9.png', 'Sit n’ Stay',
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
            _recommendedFood(),
            _recommendedFood(),
            _recommendedFood(),
            _recommendedFood(),
            _recommendedFood(),
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

  _recommendedFood() {
    return Container(
      height: 280,
      margin: EdgeInsets.only(left: 30),
      child: ListView.builder(
        itemCount: recommendedFood.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 150,
            child: Column(
              children: <Widget>[
                Container(
                  height: 180,
                  width: 150,
                  margin: EdgeInsets.only(right: 25),
                  decoration: BoxDecoration(
                    color: Color(0xff393939),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      child: ClipOval(
                        child: Image.asset(
                          recommendedFood[index].image,
                          fit: BoxFit.cover,
                          height: 120,
                          width: 120,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          AutoSizeText(
                            'Piazza Italia',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            minFontSize: 12,
                          ),
                          SizedBox(height: 5),
                          AutoSizeText(
                            '\$41.50',
                            style: TextStyle(
                              color: Color(0xff74d7df),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            minFontSize: 12,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 7),
                    Container(
                      height: 22,
                      width: 55,
                      child: RaisedButton(
                        onPressed: () {},
                        color: Color(0xff74d7df),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(25))),
                        child: Container(
                          alignment: Alignment.center,
                          child: AutoSizeText(
                            'Visit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                            maxLines: 1,
                            minFontSize: 9,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 23),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
