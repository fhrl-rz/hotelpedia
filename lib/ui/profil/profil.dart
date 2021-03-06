import 'package:flutter/material.dart';
import 'package:hotelpedia/ui/login/SignIn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hotelpedia/ui/model/usermodel.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

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
            "Profil",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color(0xff141414),
            ),
          ),
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            GestureDetector(
              onTap: () {},
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('images/user.png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '${loggedInUser.fullName} ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0014a8),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'edit profil',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Color(0xff52B69A),
                ),
              ),
              title: const Text(
                'Poin',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {},
              dense: true,
            ),
            Divider(),
            ListTile(
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios_sharp,
                    color: Color(0xff52B69A)),
              ),
              title: const Text(
                'Kartu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {},
              dense: true,
            ),
            Divider(),
            ListTile(
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Color(0xff52B69A),
                ),
              ),
              title: const Text(
                'Pemesanan saya',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {},
              dense: true,
            ),
            Divider(),
            ListTile(
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios_sharp,
                    color: Color(0xff52B69A)),
              ),
              title: const Text(
                'Daftar Pembelian',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {},
              dense: true,
            ),
            Divider(),
            ListTile(
              title: const Text(
                'Logout',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff52B69A),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignIn()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
