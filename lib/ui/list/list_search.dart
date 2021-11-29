import 'package:flutter/material.dart';

class ListSearch extends StatefulWidget {
  const ListSearch({Key? key}) : super(key: key);

  @override
  _ListSearchState createState() => _ListSearchState();
}

class _ListSearchState extends State<ListSearch> {
  TextEditingController SearchField = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(8.0),
          child: Container(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back, color: Color(0xff52B69A)),
                ),
                TextFormField(
                  onTap: () {},
                  controller: SearchField,
                  autofocus: false,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    hintText: " Search your food ",

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
          ),
        ),
      ),
    );
  }
}
