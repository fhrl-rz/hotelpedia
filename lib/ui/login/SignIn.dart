import 'package:flutter/material.dart';
import 'package:hotelpedia/ui/home/Home.dart';
import 'package:hotelpedia/ui/home/Navigatorbar.dart';
import 'package:hotelpedia/ui/login/ForgorPassword.dart';
import 'package:hotelpedia/ui/login/SignUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isHiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  Center(
                    child: Container(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xff1E6091),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: TextFormField(
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: TextFormField(
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      obscureText: isHiddenPassword,
                      textInputAction: TextInputAction.done,
                      validator: (input) {
                        if (input!.isEmpty)
                          return 'Provide Minimum 6 Characters';
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                        suffixIcon: InkWell(
                          onTap: _togglePasswordView,
                          child: Icon(Icons.visibility),
                        ),
                        hintText: " Password ",
                        prefixIcon: Icon(
                          Icons.lock,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 8, 0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotPassword()));
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Color(0xff52B69A),
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => NavigatorBar()));
                              },
                              padding: EdgeInsets.symmetric(vertical: 15),
                              color: Color(0xff1E6091),
                              elevation: 0,
                              child: Text(
                                "Sign In",
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
                  SizedBox(
                    height: 150,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have an account?"),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        child: Text(
                          "SignUp",
                          style: TextStyle(
                            color: Color(0xff52B69A),
                            fontSize: 15,
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
      ),
    );
  }

  //isHiddenPassword
  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
