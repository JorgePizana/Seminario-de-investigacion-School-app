import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:school_app_ux/routes.dart' as route;

class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  String courseKey = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background_start_image.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 120,),
            Image.asset("assets/images/app_logo.png", scale: 2.5,),
            SizedBox(height: 30,),
            Text("Welcome",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Montserrat',
                fontSize: 40),
              ),
          ],
        ),
      ),
    );
  }
}