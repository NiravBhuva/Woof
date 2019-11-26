import 'package:flutter/material.dart';
import 'package:woof_fini/screens/deals_screen.dart';
import 'package:woof_fini/screens/event_and_competition_screen.dart';
import 'package:woof_fini/screens/video_play_screen.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Categories> categories = [];
  List<String> forYou = [];
  List<String> trending = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = [
      Categories('assets/img6.jpg', 'Events & Competition'),
      Categories('assets/img9.png', 'Deals'),
      Categories('assets/img7.jpeg', 'Breeding'),
      Categories('assets/img6.jpg', 'Training'),
    ];

    forYou = [
      'assets/img10.jpeg',
      'assets/img8.jpeg',
      'assets/img_profile.jpg',
      'assets/img6.jpg',
    ];

    trending = [
      'assets/img6.jpg',
      'assets/img_profile.jpg',
      'assets/img4.jpg',
      'assets/img11.jpg',
      'assets/img10.jpeg',
      'assets/img3.jpg',
      'assets/img2.jpg',
      'assets/img5.jpg',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Discover'),
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: (){
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
              margin: EdgeInsets.symmetric(horizontal: 35),
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
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Categories',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  _categories(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'For You',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  _forYou(),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _animals('assets/dogs.png', 'Dogs'),
                  SizedBox(width: 17),
                  _animals('assets/cat.png', 'Cats'),
                  SizedBox(width: 17),
                  _animals('assets/bird.png', 'Birds'),
                  SizedBox(width: 17),
                  _animals('assets/other.png', 'Other'),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10, bottom: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Trending',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  _trending(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _categories() {
    return Container(
      height: 150,
      margin: EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: categories.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              if(index == 0){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EventAndCompetition()));
              }else if(index == 1){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DealsScreen()));
              }else if(index == 2){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>VideoPlayScreen()));
              }
            },
            child: Container(
              margin: EdgeInsets.only(right: 15),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 51,
                    child: ClipOval(
                      child: Image.asset(categories[index].image),
                    ),
                  ),
                  SizedBox(height: 7),
                  Container(
                    width: 100,
                    height: 30,
                    alignment: Alignment.center,
                    child: Text(
                      categories[index].name,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
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

  _forYou() {
    return Container(
      height: 180,
      margin: EdgeInsets.only(top: 15),
      child: ListView.builder(
        itemCount: forYou.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(right: 7),
            child: Card(
              child: Image.asset(
                forYou[index],
                width: 115,
                fit: BoxFit.fitHeight,
              ),
            ),
          );
        },
      ),
    );
  }

  _trending() {
    return Container(
      //margin: EdgeInsets.only(left: 15, right: 15),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 0.65,
        crossAxisSpacing: 7,
        mainAxisSpacing: 7,
        children: new List<Widget>.generate(
          trending.length,
          (index) {
            return new Card(
              child: Image.asset(
                trending[index],
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }

  _animals(String img, String name) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Color(0xff74d7df),
          radius: 28,
          child: Image.asset(
            img,
            width: 25,
            height: 25,
          ),
        ),
        SizedBox(height: 5),
        Container(
          width: 50,
          height: 20,
          alignment: Alignment.center,
          child: Text(
            name,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}

class Categories {
  String image;
  String name;

  Categories(this.image, this.name);
}
