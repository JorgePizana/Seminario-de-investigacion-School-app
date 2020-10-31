import 'package:flutter/material.dart';
import 'package:school_app_ux/routes.dart' as route;
import 'package:school_app_ux/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School_app_ux',
      debugShowCheckedModeBanner: false,
      initialRoute: route.startRoute,
      theme: ThemeBuilder.lightTheme,
      onGenerateRoute: route.Router.generateRoute,
    );
  }
}
