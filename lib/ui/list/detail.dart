import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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

  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-6.296951600000007, 106.6984811),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      // bearing: 192.8334901395799,
      target: LatLng(-6.296951600000007, 106.6984811),
      // tilt: 59.440717697143555,
      zoom: 14.4746);

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
            onPressed: () {
              Navigator.pop(context);
            },
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 210,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: fahrulList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.only(left: 10),
                              height: 180.0,
                              width: 165.0,
                              color: Color(0xffffff),
                              margin: EdgeInsets.only(
                                right: 5,
                              ),
                              child: Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Positioned(
                                    left: -8,
                                    child: Image.asset(
                                      fahrulList[index]["image"],
                                    ),
                                    height: 205,
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Color(0xff52B69A),
                        ),
                      ],
                    ),
                    SizedBox(height: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Rating",
                                style: TextStyle(color: Color(0xff000000))),
                            Icon(
                              Icons.star_border,
                              color: Color(0xff52B69A),
                            ),
                            Text(
                              '(7/10)',
                              style: TextStyle(color: Color(0xff52B69A)),
                            ),
                          ],
                        ),
                        Text(
                          "Rp.1.230.000",
                          style: TextStyle(
                            color: Color(0xff457ed8),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 200,
                          child: GoogleMap(
                            mapType: MapType.hybrid,
                            initialCameraPosition: _kGooglePlex,
                            onMapCreated: (GoogleMapController controller) {
                              _controller.complete(controller);
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
