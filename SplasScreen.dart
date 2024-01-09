import 'package:flutter/material.dart';
import 'package:prak1/page1.dart';
import 'package:prak1/registerscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplasCreen extends StatefulWidget {
  const SplasCreen({super.key});

  @override
  State<SplasCreen> createState() => _SplasCreenState();
}

class _SplasCreenState extends State<SplasCreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () async {
      final SharedPreferences pref = await SharedPreferences.getInstance();

      final String? nbi = pref.getString('nbi');

      if (nbi != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (build) {
              return page1();
            },
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (build) {
              return registerscreen();
            },
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xffb3987B2),
        child: Center(
          child: Image.asset(
            'assets/img/splas.png',
            scale: 3,
          ),
        ),
      ),
    );
  }
}
