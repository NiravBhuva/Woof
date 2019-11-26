import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:woof_fini/custom/my_rating.dart';

class PopUpScreen extends StatefulWidget {
  @override
  _PopUpScreenState createState() => _PopUpScreenState();
}

class _PopUpScreenState extends State<PopUpScreen> {
  String title =
      'Enjoy voucher 35% off at Sit n’ Stay stores with a minimum purchase of 500 PHP.';
  String desc1 =
      'Not only can you leave your dog here for the night with their favorite toys, but you can also find them some new playmates while you’re away. The Dog Park lets your pet interact with other pets, so playtime will always be fun. They’ll also feed your dog according to your preferred schedule and ratio, so be sure to leave your pup’s fave food. If you don’t want to leave your dog overnight but need someone to watch them for an afternoon, The Dog Park also has a daycare option.';
  String desc2 =
      'There are a lot of other hot rewards available on  woof. Let find your favorite brand now!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sit n’ Stay'),
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
            Image.asset(
              'assets/img_popup.png',
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RatingBar(
                    glow: false,
                    itemSize: 45,
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
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/schedule.png',
                        height: 23,
                        width: 23,
                      ),
                      SizedBox(width: 8),
                      Text(
                        '8am - 9pm',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  AutoSizeText(
                    title,
                    style: TextStyle(color: Colors.white, fontSize: 19),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 25),
                  AutoSizeText(
                    desc1,
                    style: TextStyle(color: Colors.white, fontSize: 13),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 50),
                  AutoSizeText(
                    desc2,
                    style: TextStyle(color: Colors.white, fontSize: 11),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Color(0xff74d7df),
              ),
              child: FlatButton(
                onPressed: () {
                  _showPopUp(context);
                },
                child: Text(
                  'Use in store',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  _showPopUp(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          content: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/img13.jpg',
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      'Sit n’ Stay',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Image.asset(
                'assets/qr.png',
                height: 170,
                width: 170,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                '35% off',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 25),
              Text(
                '045-05M',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Demi Cat',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }
}
