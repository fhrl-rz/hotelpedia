import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng SOURCE_LOCATION = LatLng(-6.296951600000007, 106.6984811);
const LatLng DEST_LOCATION = LatLng(-6.296951600000007, 106.6984820);

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
  late BitmapDescriptor sourceIcon;
  late BitmapDescriptor destinationIcon;
  Set<Marker> _markers = Set<Marker>();
  late LatLng currentlocation;
  late LatLng destinationLocation;

  void initState() {
    super.initState();

    this.setInitialLocation();
    //
    //
  }

  void setSourceAndDestinationMarkerIcons() async {
    sourceIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.0), 'images/source_pin.png');
    destinationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.0), 'images/destination_pin.png');
  }

  void setInitialLocation() {
    currentlocation = LatLng(
      SOURCE_LOCATION.latitude,
      SOURCE_LOCATION.latitude,
    );

    destinationLocation = LatLng(
      DEST_LOCATION.latitude,
      DEST_LOCATION.latitude,
    );
  }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: SOURCE_LOCATION,
    zoom: 16,
    tilt: 80,
    bearing: 30,
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
                            myLocationEnabled: true,
                            compassEnabled: false,
                            tiltGesturesEnabled: false,
                            markers: _markers,
                            mapType: MapType.hybrid,
                            initialCameraPosition: _kGooglePlex,
                            onMapCreated: (GoogleMapController controller) {
                              _controller.complete(controller);
                              showPinsOnMap();
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

  void showPinsOnMap() {
    _markers.add(Marker(
      markerId: MarkerId('source Pin'),
      position: currentlocation,
      icon:  sourceIcon,
    ));
    _markers.add(Marker(
      markerId: MarkerId('Destination Pin'),
      position: destinationLocation,
      icon:  destinationIcon,
    ));
  }
}
