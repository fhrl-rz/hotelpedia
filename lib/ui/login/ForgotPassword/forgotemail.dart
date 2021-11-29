import 'package:flutter/material.dart';
import 'package:hotelpedia/ui/login/SignIn.dart';

class ForgotViaEmail extends StatefulWidget {
  const ForgotViaEmail({Key? key}) : super(key: key);

  @override
  _ForgotViaEmailState createState() => _ForgotViaEmailState();
}

class _ForgotViaEmailState extends State<ForgotViaEmail> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Color(0xff52B69A)),
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Password reset\n    successful",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Center(
                      child: Text("Your password has been successfully reset"),
                    ),
                    SizedBox(
                      height: 470,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignIn()));
                                },
                                padding: EdgeInsets.symmetric(vertical: 15),
                                color: Color(0xff1E6091),
                                elevation: 0,
                                child: Text(
                                  " Sign In",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 16,
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
            ],
          ),
        ),
      ),
    );
  }
}
