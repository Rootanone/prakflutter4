import 'package:flutter/material.dart';
import 'package:prak1/SplasScreen.dart';
import 'package:prak1/bottomnav.dart';
import 'package:prak1/page2.dart';
import 'package:prak1/registerscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  String? nbi;
  String? nama;

  void data() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? _nbi = prefs.getString('nbi');
    final String? _nama = prefs.getString('nama');

    setState(() {
      nbi = _nbi;
      nama = _nama;
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
      body: Column(children: [
        Text(
          "Welcome to",
          style: TextStyle(
            fontSize: 50,
            height: 1,
          ),
        ),
        Text(
          "Praktikum PAB 2023",
          style: TextStyle(
            fontSize: 30,
            height: 1,
          ),
        ),
        Container(
          height: 60,
        ),
        Text(
          "$nbi",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Container(
        //   width: 50,
        //   height: 50,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(10),
        //     color: Colors.blue,
        //   ),
        // ),
        Image.asset(
          "assets/img/login.png",
          height: 300,
          width: 300,
        ),
        Text(
          "$nama",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return bottomnav();
              }),
            );
          },
          child: Container(
            width: 260,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xfff92E3A9),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                'masuk',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        Container(
          height: 10,
        ),
        InkWell(
          onTap: () async {
            final SharedPreferences prefs =
                await SharedPreferences.getInstance();
            await prefs.remove('nbi');
            await prefs.remove('nama');
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return SplasCreen();
              }),
            );
          },
          child: Container(
            width: 260,
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 210, 25, 25),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                'keluar',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
