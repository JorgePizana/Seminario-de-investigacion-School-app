import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _selectedItemIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          buildNavBarItem(Icons.home, 0),
          buildNavBarItem(Icons.search, 1),
          buildNavBarItem(Icons.person, 2),
        ],
      ),
      appBar: AppBar(
        title: Text(
          'Home screen',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width / 3,
        decoration: index == _selectedItemIndex
            ? BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                  width: 4,
                  color: Color.fromARGB(255, 201, 73, 85),
                )),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 201, 73, 85).withOpacity(0.3),
                    Color.fromARGB(255, 201, 73, 85).withOpacity(0.010),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                //color: index == _selectedItemIndex ? Color.fromARGB(255, 201, 73, 85) : Colors.white,
              )
            : BoxDecoration(),
        child: Icon(icon,
            color: index == _selectedItemIndex ? Colors.black : Colors.grey),
      ),
    );
  }
}
