import 'package:flutter/material.dart';

class PaymentPembayaran extends StatefulWidget {
  const PaymentPembayaran({Key? key}) : super(key: key);

  @override
  _PaymentPembayaranState createState() => _PaymentPembayaranState();
}

class _PaymentPembayaranState extends State<PaymentPembayaran> {
  bool _value = false;

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
          Text(
            "BANK MANDIRI",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Harga"),
                        Text("Rp."),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Kode Unik"),
                        Text("Rp."),
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Pembayaran",
                          style: TextStyle(
                            color: Color(0xff52B69A),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Rp.",
                          style: TextStyle(
                            color: Color(0xff52B69A),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Checkbox(
                  value: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  },
                ),
                Text(
                    "Dengan menekan tombol, Anda telah menyetujui\n Syarat & Ketentuan dan Kebijakan Privasi",
                    style: TextStyle(
                      fontSize: 10,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
