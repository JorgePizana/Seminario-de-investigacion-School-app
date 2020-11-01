import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:school_app_ux/routes.dart' as route;

class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  String _courseKey = '';
  int _pageState = 0;

  var _backgroundColor = Colors.white;
  var _textColor = Colors.black;

  double _logoMovement = 110;
  double _startScreenYOffset = 0;
  double windowWidth = 0;
  double windowHeight = 0;

  @override
  Widget build(BuildContext context) {
    windowHeight = MediaQuery.of(context).size.height;
    windowWidth = MediaQuery.of(context).size.width;
    switch (_pageState) {
      case 0:
        _backgroundColor = Colors.white;
        _textColor = Colors.black;

        _logoMovement = 110;
        _startScreenYOffset = windowHeight;
        break;
      case 1:
        _backgroundColor = Color.fromARGB(255, 201, 73, 85);
        _textColor = Colors.white;

        _logoMovement = 80;
        _startScreenYOffset = 200;
        break;
    }

    return Scaffold(
      body: Stack(
        children: [
          AnimatedContainer(
            color: _backgroundColor,
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(
              milliseconds: 1000, //To feel a more fluid transition
            ),
            child: GestureDetector(
              //If user touches icon it gous back to the welcome info
              onTap: () {
                setState(() {
                  _pageState = 0;
                });
              },
              child: Container(
                width: double.infinity,
                /*decoration: BoxDecoration(
                  /*image: DecorationImage(
                     image: AssetImage("assets/images/background_start_image.jpg"),
                     fit: BoxFit.cover,
                    ),
                  gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.amberAccent[100], Colors.purpleAccent],
                  ),*/
                ),*/
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    AnimatedContainer(
                      curve: Curves.fastLinearToSlowEaseIn,
                      duration: Duration(
                        milliseconds: 1000,
                      ),
                      margin: EdgeInsets.only(
                        top: _logoMovement,
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 32,
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/images/app_logo.png",
                            scale: 2.5,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Bienvenido',
                        style: TextStyle(
                            color: _textColor,
                            fontFamily: Theme.of(context)
                                .textTheme
                                .headline3
                                .fontFamily,
                            fontSize: 40),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Text(
                        'Aprende de tus cursos de una manera más interactiva',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.headline3.fontSize,
                          fontFamily:
                              Theme.of(context).textTheme.headline3.fontFamily,
                          color: _textColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (_pageState != 0) {
                              _pageState = 0;
                            } else {
                              _pageState = 1;
                            }
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(32),
                          padding: EdgeInsets.all(20),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Theme.of(context).buttonColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text("Iniciar curso",
                                style: Theme.of(context).textTheme.headline5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _pageState = 0;
              });
            },
            child: AnimatedContainer(
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(
                milliseconds: 1000,
              ),
              transform: Matrix4.translationValues(0, _startScreenYOffset, 1),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
