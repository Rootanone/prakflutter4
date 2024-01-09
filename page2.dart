import 'package:flutter/material.dart';
import 'package:prak1/page3.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page2"),
        backgroundColor: Color.fromARGB(255, 108, 26, 61),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(2),
          ),
          Center(
            child: Text(
              "Star Wars",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Row(
            //row 1
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (build) {
                          return page3();
                        },
                      ),
                    );
                  },
                  child: ClipOval(
                    child: Image.asset(
                      'assets/img/r2.png',
                      height: 120,
                      width: 120,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30),
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (build) {
                          return page3();
                        },
                      ),
                    );
                  },
                  child: ClipOval(
                    child: Image.asset(
                      'assets/img/alien.png',
                      height: 120,
                      width: 120,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(40),
          ),
          Row(
            //row 2
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (build) {
                          return page3();
                        },
                      ),
                    );
                  },
                  child: ClipOval(
                    child: Image.asset(
                      'assets/img/yoda.png',
                      height: 120,
                      width: 120,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(40),
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (build) {
                          return page3();
                        },
                      ),
                    );
                  },
                  child: ClipOval(
                    child: Image.asset(
                      'assets/img/anakin.png',
                      height: 120,
                      width: 120,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(40),
          ),
          Row(
            //row 3
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (build) {
                          return page3();
                        },
                      ),
                    );
                  },
                  child: ClipOval(
                    child: Image.asset(
                      'assets/img/yoda.png',
                      height: 120,
                      width: 120,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(40),
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (build) {
                          return page3();
                        },
                      ),
                    );
                  },
                  child: ClipOval(
                    child: Image.asset(
                      'assets/img/alien.png',
                      height: 120,
                      width: 120,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
