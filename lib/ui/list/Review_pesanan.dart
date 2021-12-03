import 'package:flutter/material.dart';
import 'package:hotelpedia/ui/payment/payment.dart';

class ReviewPesanan extends StatefulWidget {
  const ReviewPesanan({Key? key}) : super(key: key);

  @override
  _ReviewPesananState createState() => _ReviewPesananState();
}

class _ReviewPesananState extends State<ReviewPesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Review Pesanan',
          style: TextStyle(
            color: Color(0xff141414),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        children: [
          SizedBox(height: 30),
          Text("Detail Hotel"),
          Container(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Image.asset('images/list1.png'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hotel Grandzurry'),
                          Row(
                            children: [
                              Image.asset(
                                "images/location.png",
                                color: Color(0xff52B69A),
                              ),
                              SizedBox(width: 2),
                              Text(
                                "Padang, Sumatera Barat",
                                style: TextStyle(
                                  color: Color(0xff52B69A),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Check in'),
                              Text('..'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Check Out'),
                              Text('..'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Durasi'),
                              Text('..'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text("Detail Kamar"),
          Container(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Image.asset('images/list1.png'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hotel Grandzurry'),
                          Row(
                            children: [
                              Image.asset(
                                "images/location.png",
                                color: Color(0xff52B69A),
                              ),
                              SizedBox(width: 2),
                              Text(
                                "Padang, Sumatera Barat",
                                style: TextStyle(
                                  color: Color(0xff52B69A),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Check in'),
                              Text('..'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Check Out'),
                              Text('..'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Durasi'),
                              Text('..'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text("Detail Kontak"),
          Container(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Image.asset('images/list1.png'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(70, 0, 70, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Payment()));
                      },
                      padding: EdgeInsets.symmetric(vertical: 15),
                      color: Color(0xff1E6091),
                      elevation: 0,
                      child: Text(
                        "Next to Order",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
