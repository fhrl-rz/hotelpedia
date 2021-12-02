import 'package:flutter/material.dart';
import 'package:hotelpedia/ui/login/SignIn.dart';
import 'package:hotelpedia/ui/model/usermodel.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController PhoneController = new TextEditingController();
  final TextEditingController fullNameController = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isHiddenPassword = true;
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                key: _formKey,
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
                        autofocus: false,
                        controller: emailController,
                        keyboardType: TextInputType.name,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Please Enter Your Email");
                          }

                          //req expression for email  validation
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                              .hasMatch(value)) {
                            return ("Please Enter a valid email");
                          }
                          return null;
                        },
                        onSaved: (value) {
                          emailController.text = value!;
                        },
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ),
                          labelText: "Email",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ),
                          hintText: " Password ",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
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
                        autofocus: false,
                        controller: fullNameController,
                        keyboardType: TextInputType.name,
                        validator: (value) {
                          RegExp regex = new RegExp(r'^.{6,}$');
                          if (value!.isEmpty) {
                            return ("First Name cannot be empty");
                          }
                          if (!regex.hasMatch(value)) {
                            return ("Enter Valid name (Min. 6 Character)");
                          }
                          return null;
                        },
                        onSaved: (value) {
                          fullNameController.text = value!;
                        },
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ),
                          labelText: "Full Name",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: IntlPhoneField(
                        controller: PhoneController,
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
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
                      height: 30,
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
                                  signUp(emailController.text, passwordController.text);
                                },
                                padding: EdgeInsets.symmetric(vertical: 15),
                                color: Color(0xff1E6091),
                                elevation: 0,
                                child: Text(
                                  "Sign Up",
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
                    SizedBox(
                      height: 100,
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
                            "Sign In",
                            style: TextStyle(
                              color: Color(0xff52B69A),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
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
      ),
    );
  }
  void signUp(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailToFirestore()})
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }
  postDetailToFirestore() async {
    //calling our firestore
    //calling our user model
    //sedning these values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;
    UserModel userModel = UserModel();

    // writing all the values
    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.password = passwordController.text;
    userModel.fullName = fullNameController.text;
    userModel.PhoneNumber = PhoneController.text;

    await firebaseFirestore
        .collection("user")
        .doc(user.uid)
        .set(userModel.toMap());

    Fluttertoast.showToast(msg: "Account created successfully :)");

    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => SignIn()),
            (route) => false);
  }
  //isHiddenPassword
  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
