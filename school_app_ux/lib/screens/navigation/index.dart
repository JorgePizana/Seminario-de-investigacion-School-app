import 'package:flutter/material.dart';
import 'package:school_app_ux/screens/search/index.dart';
import 'package:school_app_ux/screens/home/index.dart';
import 'package:school_app_ux/screens/courseData/index.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _selectedItem = 0;
  final List pages = [
    HomeScreen(),
    SearchScreen(),
    CourseScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(
          iconList: [
            Icons.home,
            Icons.search,
            Icons.person,
          ],
          onChange: (int index){
            setState(() {
              _selectedItem = index;
            });
          },
          defaultSelectedIndex: 0,
        ),
        body: pages[_selectedItem],
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function (int) onChange;
  final List<IconData> iconList;

  CustomBottomNavigationBar(
      {this.defaultSelectedIndex = 0,
        @required this.iconList,
        @required this.onChange});

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedItem = 0;
  List<IconData> _iconList = [];

  @override
  void initState(){
    super.initState();

    _selectedItem = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> _navBarItemList = [];
    for (var i = 0; i < _iconList.length; i++){
      _navBarItemList.add(buildNavBarItem(_iconList[i], i));

    }
    return Row(
      children: _navBarItemList,
    );
  }
  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedItem = index;
        });
      },
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width / _iconList.length,
        decoration: index == _selectedItem
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
            color: index == _selectedItem ? Colors.black : Colors.grey),
      ),
    );
  }
}

