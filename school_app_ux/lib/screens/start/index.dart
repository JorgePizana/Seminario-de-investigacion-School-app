import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';
import '../../routes.dart';

class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  int _pageState = 0;

  var _backgroundColor = Colors.white;
  var _textColor = Colors.black;

  double _courseKeyHeight = 0;

  double _logoMovement = 110;
  double _startScreenYOffset = 0;
  double windowWidth = 0;
  double windowHeight = 0;

  bool _keyboardVisible = false;

  @override
  void initState(){
    super.initState();
    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible) {
        _keyboardVisible = visible;
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    windowHeight = MediaQuery.of(context).size.height;
    windowWidth = MediaQuery.of(context).size.width;

    _courseKeyHeight = windowHeight - 200;
    switch (_pageState) {
      case 0:
        _backgroundColor = Colors.white;
        _textColor = Colors.black;

        _logoMovement = 110;
        _courseKeyHeight = _keyboardVisible ? windowHeight : windowHeight - 200;
        _startScreenYOffset = windowHeight;

        break;
      case 1:
        _backgroundColor = Color.fromARGB(255, 201, 73, 85);
        _textColor = Colors.white;

        _logoMovement = 80;
        _startScreenYOffset = _keyboardVisible ? 30 : 200;
        _courseKeyHeight = _keyboardVisible ? windowHeight : windowHeight - 200;

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
                          fontFamily:
                              Theme.of(context).textTheme.headline3.fontFamily,
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
                          child: Text("Iniciar",
                              style: Theme.of(context).textTheme.headline5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedContainer(
            padding: EdgeInsets.all(25),
            height: _courseKeyHeight,
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(
              milliseconds: 1000,
            ),
            transform: Matrix4.translationValues(0, _startScreenYOffset, 1),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10, top: 10),
                  child: Text(
                    "Introduce la clave del curso",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
                InputCourseIcon(),
                SizedBox(height: 40),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.popAndPushNamed(context, homeRoute);
                        });
                      },
                      child: PrimaryButton(
                        btnText: "Entrar a curso",
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _pageState = 0; //To return to initial welcome page
                        });
                      },
                      child: OutlineBtn(
                        btnText: "Regresar a inicio",
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InputCourseIcon extends StatefulWidget {
  @override
  _InputCourseIconState createState() => _InputCourseIconState();
}

class _InputCourseIconState extends State<InputCourseIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            child: Icon(
              Icons.vpn_key_outlined, //for course key
              size: 20,
              color: Colors.grey[400],
            ),
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                border: InputBorder.none,
                hintText: "Ejemplo: kV-85A-102",

              ),

            ),
          ),
        ],
      ),
    );
  }
}

class PrimaryButton extends StatefulWidget {
  final String btnText;
  PrimaryButton({this.btnText});
  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).buttonColor,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text(
          widget.btnText,
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}

class OutlineBtn extends StatefulWidget {
  final String btnText;
  OutlineBtn({this.btnText});
  @override
  _OutlineBtnState createState() => _OutlineBtnState();
}

class _OutlineBtnState extends State<OutlineBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).buttonColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text(
          widget.btnText,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
