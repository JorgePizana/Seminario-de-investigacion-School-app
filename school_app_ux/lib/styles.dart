import 'package:flutter/material.dart';

class ThemeBuilder {
  ThemeBuilder._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.white, //App bar color
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    textTheme: TextTheme(
      headline6: TextStyle(
        //Appbar titles
        color: Colors.black87,
        fontFamily: 'Montserrat',
      ),
      headline5: TextStyle(
          //start button title
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat',
          fontSize: 20),
      headline4: TextStyle(
        //course key TextStyle
        fontFamily: 'Montserrat',
        color: Colors.grey,
        fontSize: 12,
      ),
      headline3: TextStyle(
        //initial  screen text TextStyle
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
    buttonColor: Colors.amberAccent[700], //start course button
  );
}
