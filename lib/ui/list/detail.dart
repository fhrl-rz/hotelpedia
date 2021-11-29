import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  List fahrulList = [
    {"image": "images/hotelkanan.png"},
    {"image": "images/hotelkiri.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Color(0xff52B69A)),
            onPressed: () {},
          ),
          title: Text(
            'Hotel Grandzurry',
            style: TextStyle(
              color: Color(0xff141414),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
