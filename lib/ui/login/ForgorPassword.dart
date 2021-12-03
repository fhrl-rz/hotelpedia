import 'package:flutter/material.dart';
import 'package:hotelpedia/ui/login/ForgotPassword/forgotemail.dart';
import 'package:hotelpedia/ui/login/ForgotPassword/forgotsms.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hotelpedia/ui/model/usermodel.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController emailController = new TextEditingController();
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  final auth = FirebaseAuth.instance;

  var email;
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("user")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff52B69A),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Forgot\nPassword?",
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "select which contact details should\nwe use reset your password",
                            style: TextStyle(
                              color: Color(0xffb1b5b5),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgotViaSms()));
                            },
                            padding: EdgeInsets.symmetric(vertical: 25),
                            color: Color(0xffd8e0de),
                            elevation: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: Icon(
                                    Icons.phone_android,
                                    color: Color(0xff52B69A),
                                    size: 30.0,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 140, 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'via sms',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        '${loggedInUser.PhoneNumber} ',
                                        style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Form(
                            key: _formKey,
                            child: MaterialButton(
                              onPressed: () {
                                auth.sendPasswordResetEmail(email: email);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ForgotViaEmail()));
                              },
                              padding: EdgeInsets.symmetric(vertical: 25),
                              color: Color(0xffd8e0de),
                              elevation: 0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.mail,
                                          color: Color(0xff52B69A),
                                          size: 30.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 50, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'via email',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          '${loggedInUser.email} ',
                                          style: TextStyle(
                                            color: Color(0xff000000),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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


// ada salah di line 160 "email nya"