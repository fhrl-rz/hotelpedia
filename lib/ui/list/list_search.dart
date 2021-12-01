// import 'package:flutter/material.dart';
// import 'package:hotelpedia/ui/list/detail.dart';
//
// class ListSearch extends StatefulWidget {
//   const ListSearch({Key? key}) : super(key: key);
//
//   @override
//   _ListSearchState createState() => _ListSearchState();
// }
//
// class _ListSearchState extends State<ListSearch> {
//   TextEditingController SearchField = new TextEditingController();
//   List freshList = [
//     {
//       "image": "images/list1.png",
//       "text": "Hotel Grandzurry",
//     },
//     {
//       "image": "images/list2.png",
//       "text": "Hotel Grandzurry",
//     },
//     {
//       "image": "images/list3.png",
//       "text": "Hotel Grandzurry",
//     },
//     {
//       "image": "images/list4.png",
//       "text": "Hotel Grandzurry",
//     },
//     {
//       "image": "images/list5.png",
//       "text": "Hotel Grandzurry",
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Theme(
//       data: ThemeData(fontFamily: "Montserrat"),
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 80,
//               ),
//               Flexible(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     IconButton(
//                       icon: Icon(
//                         Icons.arrow_back,
//                         color: Color(0xff52B69A),
//                       ),
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                     ),
//                     TextFormField(
//                       onTap: () {},
//                       controller: SearchField,
//                       autofocus: false,
//                       keyboardType: TextInputType.name,
//                       textInputAction: TextInputAction.next,
//                       decoration: InputDecoration(
//                         prefixIcon: Icon(Icons.search),
//                         contentPadding: EdgeInsets.fromLTRB(25, 15, 25, 15),
//                         hintText: " Search hotel or address ",
//
//                         errorBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(20),
//                           ),
//                           borderSide: BorderSide(
//                             color: Colors.red,
//                             width: 2,
//                           ),
//                         ),
//                         //  filled: true,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(8.0),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 100,
//               ),
//               Container(
//                 height: 704,
//                 child: ListView.builder(
//                     scrollDirection: Axis.vertical,
//                     shrinkWrap: true,
//                     itemCount: freshList.length,
//                     itemBuilder: (context, index) {
//                       return GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => Detail()));
//                         },
//                         child: Container(
//                           padding: EdgeInsets.only(left: 10),
//                           height: 125.0,
//                           width: 100.0,
//                           color: Color(0xffffff),
//                           margin: EdgeInsets.only(
//                             bottom: 10,
//                           ),
//                           child: Stack(
//                             overflow: Overflow.visible,
//                             children: [
//                               Positioned(
//                                 left: -6,
//                                 child: Image.asset(
//                                   freshList[index]["image"],
//                                 ),
//                               ),
//                               Positioned(
//                                 left: 130,
//                                 child: Text(
//                                   freshList[index]["text"],
//                                 ),
//                               ),
//                               Positioned(
//                                 left: 130,
//                                 top: 20,
//                                 child: Row(
//                                   children: [
//                                     Image.asset(
//                                       "images/location.png",
//                                       color: Color(0xff52B69A),
//                                     ),
//                                     SizedBox(width: 2),
//                                     Text(
//                                       "Padang, Sumatera Barat",
//                                       style: TextStyle(
//                                         color: Color(0xff52B69A),
//                                         fontSize: 12,
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               Positioned(
//                                 left: 135,
//                                 top: 38,
//                                 child: Text(
//                                   'Opsi jaminan refund tersedia',
//                                   style: TextStyle(
//                                     color: Color(0xff868d97),
//                                     fontSize: 11,
//                                   ),
//                                 ),
//                               ),
//                               Positioned(
//                                 left: 130,
//                                 bottom: 5,
//                                 child: Row(
//                                   children: [
//                                     Icon(Icons.star_border,
//                                         color: Color(0xff52B69A)),
//                                     SizedBox(width: 2),
//                                     Text(
//                                       "(7/10)",
//                                       style: TextStyle(
//                                         color: Color(0xff52B69A),
//                                         fontSize: 12,
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               Positioned(
//                                 right: 5,
//                                 bottom: 5,
//                                 child: Text(
//                                   'Rp.1.230.000',
//                                   style: TextStyle(
//                                     color: Color(0xFF163D74),
//                                     fontSize: 11,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     }),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
