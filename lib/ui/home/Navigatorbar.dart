import 'package:flutter/material.dart';
import 'package:hotelpedia/ui/home/Home.dart';
import 'package:hotelpedia/ui/list/list_search.dart';

class NavigatorBar extends StatefulWidget {
  final int? initTab;
  NavigatorBar({this.initTab});

  @override
  _NavigatorBarState createState() => _NavigatorBarState();
}

class _NavigatorBarState extends State<NavigatorBar> {
  int _selectedNavBar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavBar = index;
    });
  }

  final _widgetOptions = [
    Home(),
  ];

  @override
  void initState() {
    _selectedNavBar = widget.initTab ?? 0;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: Scaffold(
        body: _widgetOptions[_selectedNavBar],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _changeSelectedNavBar,
          currentIndex: _selectedNavBar,
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_rounded), label: "Order List"),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "inbox",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "profile",
            ),
          ],
          selectedItemColor: Color(0xff52B69A),
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
        ),
      ),
    );
  }
}
