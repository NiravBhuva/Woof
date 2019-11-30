import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'following_screen.dart';

class FollowersScreen extends StatefulWidget {
  @override
  _FollowersScreenState createState() => _FollowersScreenState();
}

class _FollowersScreenState extends State<FollowersScreen> {
  List<Follow> list = [];

  @override
  void initState() {
    // TODO: implement initState
    list.add(Follow('assets/img8.jpeg', 'Taylor Marks', true));
    list.add(Follow('assets/img13.jpg', 'Daisy Frederick', false));
    list.add(Follow('assets/img10.jpeg', 'Alex Parrish', true));
    list.add(Follow('assets/img7.jpeg', 'Teresa Russo', true));
    list.add(Follow('assets/img4.jpg', 'Wilson hensley', false));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Followers'),
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.close),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: _list(),
      ),
    );
  }

  _list() {
    return ListView.builder(
      itemCount: list.length,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 12),
          child: ListTile(
            leading: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.black,
              child: ClipOval(
                child: Image.asset(
                  list[index].image,
                  height: 55,
                  width: 55,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: AutoSizeText(
              list[index].name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              minFontSize: 5,
              maxLines: 1,
            ),
            trailing: list[index].showButton
                ? FlatButton(
              onPressed: () {},
              child: Text(
                'Follow',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
                : Container(
              child: SizedBox(
                width: 5,
              ),
            ),
          ),
        );
      },
    );
  }
}
