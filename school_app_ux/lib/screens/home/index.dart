import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_app_ux/screens/home/widgets/activities_list/index.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 201, 73, 85),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 201, 73, 85),
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Grupo 9CC2',
          style: TextStyle(
            //Appbar titles
            color: Colors.white,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        actions: [
          IconButton(icon: Icon(
            Icons.settings,
            color: Colors.white, // Theme.of(context).iconTheme.color,
            size: 20,
          ), onPressed: null)
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: [
                  ActivitiesList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
