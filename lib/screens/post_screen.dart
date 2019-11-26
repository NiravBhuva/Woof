import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  String text =
      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diamLorem ipsum dolor sit amet, consetetur sadipscing elitr';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Post'),
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
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: Container(
                      height: 100,
                      margin: EdgeInsets.only(right: 15, left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Flexible(
                            child: AutoSizeText(
                              text,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            '50/50',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/img_profile.jpg',
                    height: 105,
                    width: 105,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: MaterialButton(
                child: ListTile(
                  onTap: (){},contentPadding: EdgeInsets.zero,
                  title: Text(
                    'Join a Competition',
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: MaterialButton(
                child: ListTile(
                  onTap: (){},contentPadding: EdgeInsets.zero,
                  title: Text(
                    'Categories',
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    alignment: Alignment.center,
                    width: 110,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text(
                      'Post',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
