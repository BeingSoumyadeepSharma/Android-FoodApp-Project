import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import './animated_loadscreen.dart';
// import './login_window.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text(
            "Food App",
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.account_circle,
                size: 35,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            SearchBar(),
            LoadAnimate(),
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 55,
          color: Colors.red[700],
          buttonBackgroundColor: Colors.red[900],
          backgroundColor: Color.fromRGBO(42, 42, 42, 1),
          items: <Widget>[
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.verified_user,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.add,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.list,
              size: 30,
              color: Colors.white,
            ),
          ],
          animationDuration: Duration(
            milliseconds: 250,
          ),
          animationCurve: Curves.easeInOut,
          onTap: (index) {
            debugPrint("Current Index is $index");
          },
        ),
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      margin: EdgeInsets.all(0),
      color: Colors.red[700],
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: TextField(
        cursorColor: Colors.white,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
          hintText: "Search Restaurants",
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
