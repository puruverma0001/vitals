import 'package:flutter/material.dart';

class FindFriendsOnMap extends StatefulWidget {
  @override
  _FindFriendsOnMapState createState() => _FindFriendsOnMapState();
}

class _FindFriendsOnMapState extends State<FindFriendsOnMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/location.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            child: SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  color: Colors.black.withOpacity(0.1),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back_ios),
                          color: Colors.black,
                          iconSize: 25.0,
                        ),
                        Text(
                          "Vital",
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/login.jpeg'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
