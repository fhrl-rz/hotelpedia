import 'package:flutter/material.dart';
import 'package:hotelpedia/ui/list/detail.dart';
import 'package:hotelpedia/ui/list/list_search.dart';
import 'package:hotelpedia/ui/list/list_search1.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController SearchField = new TextEditingController();

  List freshList = [
    {"image": "images/hotel1.png"},
    {"image": "images/hotel1.png"},
    {"image": "images/hotel1.png"},
  ];
  List padangList = [
    {"image": "images/hotel2.1.png"},
    {"image": "images/hotel2.2.png"},
    {"image": "images/hotel2.1.png"},
    {"image": "images/hotel2.2.png"},
  ];
  List acehList = [
    {"image": "images/hotel3.1.png"},
    {"image": "images/hotel3.2.png"},
    {"image": "images/hotel3.1.png"},
    {"image": "images/hotel3.2.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "HOTELPEDIA",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xff1E6091),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          TextFormField(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ListSeacrch()));
                            },
                            controller: SearchField,
                            autofocus: true,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              contentPadding:
                                  EdgeInsets.fromLTRB(20, 15, 20, 15),
                              hintText: " Search your food ",

                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 2,
                                ),
                              ),
                              //  filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 155,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: freshList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                padding: EdgeInsets.only(left: 10),
                                height: 190.0,
                                width: 290.0,
                                margin: EdgeInsets.only(
                                  right: 30,
                                ),
                                child: Stack(
                                  overflow: Overflow.visible,
                                  children: [
                                    Positioned(
                                        left: -6,
                                        child: Image.asset(
                                            freshList[index]["image"])),
                                  ],
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Kategori",
                            style: TextStyle(
                              color: Color(0xff141414),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 110,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Text(
                                  "See all",
                                  style: TextStyle(
                                    color: Color(0xff1e6091),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Detail()));
                        },
                        child: Container(
                          height: 270,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: freshList.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.only(),
                                  height: 200.0,
                                  width: 190.0,
                                  margin: EdgeInsets.only(
                                    right: 15,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Stack(
                                    overflow: Overflow.visible,
                                    children: [
                                      Center(
                                        child: Image.asset(
                                            padangList[index]["image"]),
                                      ),
                                      Positioned(
                                        bottom: 30,
                                        left: 20,
                                        child: Text('Grandzurry Hotel',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                      Positioned(
                                        bottom: 5,
                                        right: 18,
                                        child: Row(
                                          children: [
                                            Image.asset("images/location.png"),
                                            SizedBox(width: 2),
                                            Text('Padang, Sumatera Barat',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Recomended",
                        style: TextStyle(
                          color: Color(0xff141414),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 270,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: freshList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                padding: EdgeInsets.only(),
                                height: 200.0,
                                width: 190.0,
                                margin: EdgeInsets.only(
                                  right: 15,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Stack(
                                  overflow: Overflow.visible,
                                  children: [
                                    Center(
                                      child:
                                          Image.asset(acehList[index]["image"]),
                                    ),
                                    Positioned(
                                      bottom: 30,
                                      left: 20,
                                      child: Text('Grandzurry Hotel',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ),
                                    Positioned(
                                      bottom: 5,
                                      right: 18,
                                      child: Row(
                                        children: [
                                          Image.asset("images/location.png"),
                                          SizedBox(width: 2),
                                          Text('Padang, Sumatera Barat',
                                              style: TextStyle(
                                                fontSize: 10,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
