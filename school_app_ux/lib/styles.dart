import 'package:flutter/material.dart';

class ThemeBuilder {
  ThemeBuilder._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Color.fromARGB(255, 201, 73, 85), //App bar color
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    textTheme: TextTheme(
      headline6: TextStyle(
        //Appbar titles
        color: Colors.white,
        fontFamily: 'Montserrat',
      ),
      headline5: TextStyle(
          //start course button title
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat',
          fontSize: 20),
      headline4: TextStyle(
        //back to initial page title
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat',
          fontSize: 20),
      headline3: TextStyle(
        //course key TextStyle
        fontFamily: 'Montserrat',
        color: Colors.grey,
        fontSize: 15,
      ),
      headline2: TextStyle(
        //initial screen text TextStyle
        fontFamily: 'Montserrat',
        color: Colors.black,
        fontSize: 20,
      ),
    ),
    cardTheme: CardTheme(
      //Card theme
      color: Colors.white,
      shadowColor: Colors.grey[400].withOpacity(.6),
    ),
    iconTheme: IconThemeData(
      color: Colors.grey,
    ),
    tabBarTheme: TabBarTheme(
      //Possibly For under bar
      labelColor: Color.fromARGB(255, 26, 62, 147),
      unselectedLabelColor: Colors.grey[400],
    ),
    buttonColor: Colors.deepPurple, //start course button

  );
}
