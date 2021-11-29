import 'package:flutter/material.dart';

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
          onPressed: () {},
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
    );
  }
}
