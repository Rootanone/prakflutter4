import 'package:prak1/SplasScreen.dart';
import 'package:prak1/widget/fieldcustom.dart';
import 'package:flutter/material.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({super.key});

  @override
  State<PinScreen> createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  TextEditingController pincontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 86, 87, 87),
                Color.fromARGB(255, 211, 164, 152),
                Color.fromARGB(255, 213, 67, 57)
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Padding(
                //   padding: EdgeInsets.only(top: 20),
                // ),
                Center(
                  child: Text(
                    "ENTER YOUR PIN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                Center(
                  child: Text(
                    "Please enter your pin that you have created",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Container(
                  child: Icon(
                    Icons.lock,
                    size: 48,
                    color: Colors.black,
                  ),
                ),
                textFieldCustom(' ', pincontroller),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (build) {
                          return SplasCreen();
                        },
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromARGB(255, 245, 252, 242),
                    ),
                    height: 50,
                    width: 320,
                    child: Center(
                      child: Icon(Icons.lock_open),
                    ),
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
