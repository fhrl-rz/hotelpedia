import 'package:flutter/material.dart';

class OrderList extends StatefulWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  TextEditingController SearchField = new TextEditingController();
  List freshList = [
    {
      "image": "images/list1.png",
      "text": "Hotel Grandzurry",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          title: Text(
            "Order List",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color(0xff141414),
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Column(
                  children: [
                    TextFormField(
                      onTap: () {},
                      controller: SearchField,
                      autofocus: false,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        contentPadding: EdgeInsets.fromLTRB(25, 15, 25, 15),
                        hintText: " Search hotel or address ",

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
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: freshList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            height: 125.0,
                            width: 100.0,
                            color: Color(0xffffff),
                            margin: EdgeInsets.only(
                              bottom: 10,
                            ),
                            child: Stack(
                              overflow: Overflow.visible,
                              children: [
                                Positioned(
                                  left: -6,
                                  child: Image.asset(
                                    freshList[index]["image"],
                                  ),
                                ),
                                Positioned(
                                  left: 130,
                                  child: Text(
                                    freshList[index]["text"],
                                  ),
                                ),
                                Positioned(
                                  left: 130,
                                  top: 25,
                                  child: Row(
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
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  left: 123,
                                  bottom: 5,
                                  child: Row(
                                    children: [
                                      Text(
                                        "Sedang diproses",
                                        style: TextStyle(
                                          color: Color(0xff52B69A),
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  right: 5,
                                  bottom: 5,
                                  child: Text(
                                    'Rp.1.230.000',
                                    style: TextStyle(
                                      color: Color(0xFF1E6091),
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
