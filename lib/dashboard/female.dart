import 'package:flutter/material.dart';
import 'package:vitals/dashboard/femaleFindFriends/findFreinds.dart';
import 'package:vitals/health/healthBar.dart';

class FemaleDashboard extends StatefulWidget {
  @override
  _FemaleDashboardState createState() => _FemaleDashboardState();
}

class _FemaleDashboardState extends State<FemaleDashboard> {
  GlobalKey<ScaffoldState> scaffold = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffold,
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Ritika Dhiman"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FindFriendsOnMap(),
                    ));
              },
              leading: Icon(Icons.find_replace),
              title: Text("Find Friends"),
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.format_align_left),
                    onPressed: () {
                      scaffold.currentState.openDrawer();
                    },
                    iconSize: 30.0,
                  ),
                  Text(
                    "Vital",
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/login.jpeg'),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Colors.indigoAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                elevation: 5,
                child: HealthBar(),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
