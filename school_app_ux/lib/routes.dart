import 'package:flutter/material.dart';
import 'package:school_app_ux/screens/courseData/index.dart';
import 'package:school_app_ux/screens/home/index.dart';
import 'package:school_app_ux/screens/search/index.dart';
import 'package:school_app_ux/screens/start/index.dart';


//const String splashRoute = '/';
const String startRoute = 'initial';
const String homeRoute = 'home';
const String searchRoute = 'register';
const String courseDataRoute = 'login';

class Router {
  static Route <dynamic> generateRoute(RouteSettings settings){
    switch (settings.name){
      case startRoute:
        return MaterialPageRoute(builder: (_) => InitialScreen());

      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());

      case searchRoute:
        return MaterialPageRoute(builder: (_) => SearchScreen());

      case courseDataRoute:
        return MaterialPageRoute(builder: (_) => CourseScreen());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );

    }
  }
}
