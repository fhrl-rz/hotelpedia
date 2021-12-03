import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hotelpedia/ui/payment/payment.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl/intl.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int _value = 1;

  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;

  @override
  Widget build(BuildContext context) {
    DateTime datetime = DateTime.now();
    String datetime1 = DateFormat("yyyy-MM-dd").format(datetime);
    print(datetime1);
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
            'CheckOut',
            style: TextStyle(
              color: Color(0xff141414),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Nama Kontak',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      hintText: 'Masukan Nama',
                      hintStyle: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'No Hp ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: IntlPhoneField(
                    decoration: InputDecoration(
                      hintText: 'Masukan No Hp',
                      hintStyle: TextStyle(
                        fontSize: 12,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                    initialCountryCode: 'NP',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                      print(phone.countryCode); // get country code only
                      print(phone.number);
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Alamat Email',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      hintText: 'Masukan Email',
                      hintStyle: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Check In'),
                    Text('Check Out'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(datetime1),
                      ],
                    ),
                    DropdownButton(
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text(datetime1),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text(datetime1),
                          value: 2,
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          value = _value;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Permintaan Khusus',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: _value1,
                            onChanged: (value) {
                              setState(() {
                                _value1 = value!;
                              });
                            },
                          ),
                          Text("Kamar Bebas rokok",
                              style: TextStyle(
                                fontSize: 12,
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: _value2,
                            onChanged: (value) {
                              setState(() {
                                _value2 = value!;
                              });
                            },
                          ),
                          Text("Lantai Atas",
                              style: TextStyle(
                                fontSize: 12,
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: _value3,
                            onChanged: (value) {
                              setState(() {
                                _value3 = value!;
                              });
                            },
                          ),
                          Text("Lainnya",
                              style: TextStyle(
                                fontSize: 12,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  'Total harga',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Payment()));
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
          ),
        ),
      ),
    );
  }
}
