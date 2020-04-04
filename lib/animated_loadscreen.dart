import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class LoadAnimate extends StatefulWidget {
  @override
  _LoadAnimateState createState() => _LoadAnimateState();
}

class _LoadAnimateState extends State<LoadAnimate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(42, 42, 42, 1),
        border: Border.all(
          width: 0,
          color: Color.fromRGBO(42, 42, 42, 1),
        ),
      ),
      height: 493.425,
      child: FlareActor(
        "assets/Smoking_Turkey.flr",
        shouldClip: false,
        alignment: Alignment.center,
        fit: BoxFit.contain,
        isPaused: false,
        animation: 'FoodBuild',
      ),
    );
  }
}
