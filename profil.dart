import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class profil extends StatefulWidget {
  const profil({super.key});

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  String? nbi;
  String? nama;
  String? mail;
  String? place;
  String? ig;

  void data() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? _nbi = prefs.getString('nbi');
    final String? _nama = prefs.getString('nama');
    final String? _mail = prefs.getString('mmail');
    final String? _place = prefs.getString('place');
    final String? _ig = prefs.getString('ig');

    setState(() {
      nbi = _nbi;
      nama = _nama;
      mail = _mail;
      place = _place;
      ig = _ig;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 167, 146, 155),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(2),
          ),
          Center(
            child: Text(
              "Profile",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 30),
            child: Icon(
              Icons.account_circle,
              size: 100,
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 60),
                  child: Icon(
                    Icons.account_circle,
                    size: 50,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 90),
                  child: Text('$nama'),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 60, top: 40),
                  child: Icon(Icons.card_membership, size: 50),
                ),
                Container(
                  margin: EdgeInsets.only(left: 90, top: 40),
                  child: Text('$nbi'),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 60, top: 40),
                  child: Icon(Icons.mail, size: 50),
                ),
                Container(
                  margin: EdgeInsets.only(left: 90, top: 40),
                  child: Text('$mail'),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 60, top: 40),
                  child: Icon(Icons.location_city, size: 50),
                ),
                Container(
                  margin: EdgeInsets.only(left: 90, top: 40),
                  child: Text('$place'),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 60, top: 40),
                  child: Icon(Icons.facebook_sharp, size: 50),
                ),
                Container(
                  margin: EdgeInsets.only(left: 90, top: 40),
                  child: Text('$ig'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
