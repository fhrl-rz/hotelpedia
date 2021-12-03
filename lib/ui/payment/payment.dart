import 'package:flutter/material.dart';
import 'package:hotelpedia/ui/payment/payment_pembayaran.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
          'Pembayaran',
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
          SizedBox(
            height: 30,
          ),
          Text(
            "Metode Pembayaran",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          Container(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Kartu Kredit/Debit',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    onTap: () {},
                    dense: true,
                  ),
                  ListTile(
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Color(0xff52B69A),
                      ),
                    ),
                    title: const Text(
                      'Kartu Kredit',
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentPembayaran()));
                    },
                    dense: true,
                  ),
                  ListTile(
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Color(0xff52B69A),
                      ),
                    ),
                    title: const Text(
                      'Kartu Debit',
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentPembayaran()));
                    },
                    dense: true,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Virtual Account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {},
                    dense: true,
                  ),
                  ListTile(
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Color(0xff52B69A),
                      ),
                    ),
                    title: const Text(
                      'Bank BRI Virtual',
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentPembayaran()));
                    },
                    dense: true,
                  ),
                  ListTile(
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Color(0xff52B69A),
                      ),
                    ),
                    title: const Text(
                      'Bank BNI Virtual',
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentPembayaran()));
                    },
                    dense: true,
                  ),
                  ListTile(
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Color(0xff52B69A),
                      ),
                    ),
                    title: const Text(
                      'Bank Mandiri Virtual',
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentPembayaran()));
                    },
                    dense: true,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Transfer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    onTap: () {},
                    dense: true,
                  ),
                  ListTile(
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Color(0xff52B69A),
                      ),
                    ),
                    title: const Text(
                      'Bank BRI',
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentPembayaran()));
                    },
                    dense: true,
                  ),
                  ListTile(
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Color(0xff52B69A),
                      ),
                    ),
                    title: const Text(
                      'Bank BNI',
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentPembayaran()));
                    },
                    dense: true,
                  ),
                  ListTile(
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Color(0xff52B69A),
                      ),
                    ),
                    title: const Text(
                      'Bank Mandiri',
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentPembayaran()));
                    },
                    dense: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
