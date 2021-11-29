import 'package:flutter/material.dart';
import 'package:hotelpedia/ui/login/SignIn.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController login = new TextEditingController();
  bool isHiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    bool isHiddenPassword = true;
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
                    height: 100,
                  ),
                  Center(
                    child: Container(
                      child: Text(
                        "Sign Up",
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
                        // suffixIcon: InkWell(
                        //   onTap: _togglePasswordView,
                        //   child: Icon(Icons.visibility),
                        // ),
                        hintText: " Password ",
                        prefixIcon: Icon(
                          Icons.lock,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                        labelText: "Full Name",
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: IntlPhoneField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
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
                    height: 70,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: MaterialButton(
                              onPressed: () {},
                              padding: EdgeInsets.symmetric(vertical: 15),
                              color: Color(0xff1E6091),
                              elevation: 0,
                              child: Text(
                                "Sign Up",
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
                    height: 80,
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
                                  builder: (context) => SignIn()));
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
