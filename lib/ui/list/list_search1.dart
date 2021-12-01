import 'package:flutter/material.dart';

class ListSeacrch extends StatefulWidget {
  const ListSeacrch({Key? key}) : super(key: key);

  @override
  _ListSeacrchState createState() => _ListSeacrchState();
}

class _ListSeacrchState extends State<ListSeacrch> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
            color: Colors.blue.shade200,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            controller: _textEditingController,
            decoration: InputDecoration(
              border: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding: EdgeInsets.all(15),
              hintText: 'Search hotel or address',
              suffixIcon: Image.asset('images/or.png'),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }
}
