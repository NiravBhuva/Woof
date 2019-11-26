import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:woof_fini/screens/pop_up_screen.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('History'),
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
            SizedBox(height: 20),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PopUpScreen()));
              },
              child: _list(
                  'assets/img13.jpg',
                  'Sit n’ Stay',
                  'Pet services',
                  'Discount 35% for all ...',
                  'Closed till 08:00 AM',
                  'Bolshoy prospect, Petro...'),
            ),
            SizedBox(height: 10),
            _list(
                'assets/pet_services_logo.jpg',
                'Pet Service',
                'Pet services',
                'Discount 35% for all ...',
                'Closed till 08:00 AM',
                'Bolshoy prospect, Petro...'),
            SizedBox(height: 10),
            _list(
                'assets/Untitled-1.jpg',
                'Pawsitive',
                'Pet services',
                'Discount 35% for all ...',
                'Closed till 08:00 AM',
                'Bolshoy prospect, Petro...'),
            SizedBox(height: 10),
            _list(
                'assets/logo.jpg',
                'Pet a Pet',
                'Pet services',
                'Discount 35% for all ...',
                'Closed till 08:00 AM',
                'Bolshoy prospect, Petro...'),
          ],
        ),
      ),
    );
  }

  Widget _list(String img, String title, String subTitle, String tag, String time,
      String desc) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        color: Color(0xff393939),
        child: Container(
          margin: EdgeInsets.all(15),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(3)),
                child: Image.asset(
                  img,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Flexible(
                child: Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AutoSizeText(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                        maxLines: 1,
                        minFontSize: 14,
                      ),
                      SizedBox(height: 5),
                      AutoSizeText(
                        subTitle,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        maxLines: 1,
                        minFontSize: 11,
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/tag.png',
                            height: 17,
                            width: 17,
                          ),
                          SizedBox(width: 5),
                          AutoSizeText(
                            tag,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                            maxLines: 1,
                            minFontSize: 9,
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      AutoSizeText(
                        time,
                        style: TextStyle(
                          color: Color(0xffff1e74),
                          fontSize: 14,
                        ),
                        maxLines: 1,
                        minFontSize: 10,
                      ),
                      SizedBox(height: 5),
                      AutoSizeText(
                        desc,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                        maxLines: 1,
                        minFontSize: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
