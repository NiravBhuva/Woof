import 'package:auto_size_text/auto_size_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:woof_fini/custom/my_rating.dart';
import 'package:woof_fini/screens/gmap_place_screen.dart';

import 'event_and_competition_screen.dart';

class PetFriendlyServicesScreen extends StatefulWidget {
  @override
  _PetFriendlyServicesScreenState createState() => _PetFriendlyServicesScreenState();
}

class _PetFriendlyServicesScreenState extends State<PetFriendlyServicesScreen> {
  List<String> pages = [
    'assets/img10.jpeg',
    'assets/img6.jpg',
    'assets/img_profile.jpg',
    'assets/img3.jpg',
  ];
  List<Events> discoverPlaces = new List<Events>();
  List<Events> malls = new List<Events>();
  List<Events> restaurants = new List<Events>();
  List<Events> hotels = new List<Events>();
  List<Events> airlines = new List<Events>();
  var currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    discoverPlaces.add(Events('assets/img14.png', 'Malls', '', ''));
    discoverPlaces.add(Events('assets/img15.png', 'Hotels', '', ''));
    discoverPlaces.add(Events('assets/img14.png', 'Airlines', '', ''));

    malls.add(Events('assets/img5.jpg', 'Tiendesitas', '0.2 mi',
        ' C-5 Las Fiestas, Pasig, Metro Manila'));
    malls.add(Events('assets/img_profile.jpg', 'Eastwood Mall',
        '1.3 mi', '116 Orchard Rd, Bagumbayan, Quezon City, 1110 Metro Manila'));
    malls.add(Events('assets/img5.jpg', 'Tiendesitas', '0.2 mi',
        ' C-5 Las Fiestas, Pasig, Metro Manila'));

    restaurants.add(Events('assets/img5.jpg', 'Delander Pizza And Cafe', '0.2 mi',
        ' C-5 Las Fiestas, Pasig, Metro Manila'));
    restaurants.add(Events('assets/img_profile.jpg', 'Whole Pet Kitchen:',
        '1.3 mi', '116 Orchard Rd, Bagumbayan, Quezon City, 1110 Metro Manila'));
    restaurants.add(Events('assets/img5.jpg', 'Delander Pizza And Cafe', '0.2 mi',
        ' C-5 Las Fiestas, Pasig, Metro Manila'));

    hotels.add(Events('assets/img5.jpg', 'Novotel Manila Araneta City', '0.2 mi',
        ' C-5 Las Fiestas, Pasig, Metro Manila'));
    hotels.add(Events('assets/img_profile.jpg', 'Ace Hotel & Suites',
        '1.3 mi', '116 Orchard Rd, Bagumbayan, Quezon City, 1110 Metro Manila'));
    hotels.add(Events('assets/img5.jpg', 'Novotel Manila Araneta City', '0.2 mi',
        ' C-5 Las Fiestas, Pasig, Metro Manila'));

    airlines.add(Events('assets/img5.jpg', 'Cebu Pacific', '0.2 mi',
        ' C-5 Las Fiestas, Pasig, Metro Manila'));
    airlines.add(Events('assets/img_profile.jpg', 'Philippines airlines (PAL)',
        '1.3 mi', '116 Orchard Rd, Bagumbayan, Quezon City, 1110 Metro Manila'));
    airlines.add(Events('assets/img5.jpg', 'Cebu Pacific', '0.2 mi',
        ' C-5 Las Fiestas, Pasig, Metro Manila'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
                'Discover places',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            SizedBox(height: 15),
            _exploreCategories(),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                'Malls',
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15),
            _eventsList(malls),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                'Restaurants',
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15),
            _eventsList(restaurants),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                'Hotels',
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15),
            _eventsList(hotels),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                'Airlines',
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15),
            _eventsList(airlines),
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

  _exploreCategories() {
    return Container(
      height: 110,
      margin: EdgeInsets.only(left: 30),
      child: ListView.builder(
        itemCount: discoverPlaces.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){

            },
            child: Container(
              margin: EdgeInsets.only(right: 20),
              width: 130,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Opacity(
                    opacity: 0.7,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        discoverPlaces[index].image,
                        height: 100,
                        width: 130,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: AutoSizeText(
                      discoverPlaces[index].title,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      minFontSize: 16,
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

  _eventsList(List data) {
    return Container(
      height: 250,
      margin: EdgeInsets.only(left: 25),
      child: ListView.builder(
        itemCount: data.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GmapPlaceScreen()));
            },
            child: Container(
              margin: EdgeInsets.only(right: 13),
              width: 250,
              child: Card(
                color: Color(0xff1f1f1f),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(2), topRight: Radius.circular(2)),
                      child: Image.asset(
                        data[index].image,
                        height: 150,
                        width: 240,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 7),
                          Container(
                            height: 25,
                            child: AutoSizeText(
                              data[index].title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                          Container(
                            height: 25,
                            child: AutoSizeText(
                              data[index].location,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              //SizedBox(width: 1),
                              RatingBar(
                                glow: false,
                                itemSize: 30,
                                initialRating: 2,
                                direction: Axis.horizontal,
                                allowHalfRating: false,
                                itemCount: 5,
                                ratingWidget: RatingWidget(
                                  full: Image.asset('assets/star.png'),
                                  empty: Image.asset('assets/star.png'),
                                ),
                                itemPadding: EdgeInsets.all(0),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
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
                              //SizedBox(width: 1),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

}
