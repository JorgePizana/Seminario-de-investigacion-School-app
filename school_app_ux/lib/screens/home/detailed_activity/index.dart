import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_app_ux/screens/models/course_model.dart';

class ActivitiesScreen extends StatefulWidget {
  final CourseData material_homework;

  const ActivitiesScreen({this.material_homework});

  @override
  _ActivitiesScreenState createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.material_homework.activity),
      ),
    );
  }
}
