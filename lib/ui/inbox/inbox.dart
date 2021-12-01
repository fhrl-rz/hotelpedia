import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Theme(
        data: ThemeData(fontFamily: "Montserrat"),
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: "Semua"),
                Tab(text: "Belum Dibaca"),
              ],
              unselectedLabelStyle: TextStyle(
                fontFamily: "Montserrat",
              ),
              labelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.black,
              indicator: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blueAccent, Colors.blueAccent]),
                borderRadius: BorderRadius.circular(0),
              ),
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: Text(
              "Inbox",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color(0xff141414),
              ),
            ),
            centerTitle: true,
          ),
        ),
      ),
      length: 2,
      initialIndex: 0,
    );
  }
}
