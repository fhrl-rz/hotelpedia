import 'package:flutter/material.dart';
import 'package:hotelpedia/ui/list/detail.dart';

class ListSeacrch extends StatefulWidget {
  const ListSeacrch({Key? key}) : super(key: key);

  @override
  _ListSeacrchState createState() => _ListSeacrchState();
}

class _ListSeacrchState extends State<ListSeacrch> {
  TextEditingController _textEditingController = TextEditingController();

  List freshList = [
    {
      "image": "images/list1.png",
      "text": "Hotel Grandzurry",
    },
    {
      "image": "images/list2.png",
      "text": "Hotel Grandzurry",
    },
    {
      "image": "images/list3.png",
      "text": "Hotel Grandzurry",
    },
    {
      "image": "images/list4.png",
      "text": "Hotel Grandzurry",
    },
    {
      "image": "images/list5.png",
      "text": "Hotel Grandzurry",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: "Roboto"),
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back, color: Color(0xff52B69A))),
            elevation: 0,
            backgroundColor: Colors.white,
            title: Container(
              child: TextField(
                controller: _textEditingController,
                autofocus: false,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),

                  //enabledBorder: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                  hintText: 'Search hotel address',
                  hintStyle: TextStyle(
                    fontSize: 14,
                  ),
                  suffixIcon: Image.asset('images/or.png'),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
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
                          height: 800,
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: freshList.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Detail()));
                                  },
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
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 130,
                                          top: 20,
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
                                          left: 135,
                                          top: 38,
                                          child: Text(
                                            'Opsi jaminan refund tersedia',
                                            style: TextStyle(
                                              color: Color(0xff868d97),
                                              fontSize: 11,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 130,
                                          bottom: 5,
                                          child: Row(
                                            children: [
                                              Icon(Icons.star_border,
                                                  color: Color(0xff52B69A)),
                                              SizedBox(width: 2),
                                              Text(
                                                "(7/10)",
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
                                              color: Color(0xFF163D74),
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
                  )
                ],
              ),
            ),
          )),
    );
  }
}
