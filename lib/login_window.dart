import 'package:flutter/material.dart';

class LoginWin extends StatefulWidget {
  @override
  _LoginWinState createState() => _LoginWinState();
}

class _LoginWinState extends State<LoginWin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.05, 1],
              colors: [Colors.white, Colors.red[900]],
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: 339.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/foodpic.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
