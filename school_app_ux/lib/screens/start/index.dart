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
          /*image: DecorationImage(
            image: AssetImage("assets/images/background_start_image.jpg"),
            fit: BoxFit.cover,
          ),*/
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.amberAccent[100], Colors.purpleAccent],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                top: 80,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 32,
              ),
              child: Center(
                child: Image.asset("assets/images/app_logo.png", scale: 2.5,),
              ),
            ),
            Container(
              child: Text("Bienvenido",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontSize: 40),
              ),
            ),
            Container(
              margin: EdgeInsets.all(32),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Aprende de tus cursos de una manera más interactiva",
                 textAlign: TextAlign.center,
                 style: Theme.of(context).textTheme.headline3,
              ),
            ),
            SizedBox(height: 32,),
            Container(

              child: GestureDetector(
                onTap: (){

                },
                child: Container(
                  margin: EdgeInsets.all(32),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).buttonColor,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text("Iniciar curso",
                    style: Theme.of(context).textTheme.headline5
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}