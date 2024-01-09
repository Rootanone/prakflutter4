import 'package:flutter/material.dart';
import 'package:prak1/api/apiController.dart';
import 'package:prak1/widget/listmovie.dart';

class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _Page3State();
}

class _Page3State extends State<page3> {
  late Future<List<dynamic>> _data;

  @override
  void initState() {
    // TODO: implement initState
    _data = ApiController().getdatas();
    super.initState();
  }

  List movie = [
    {"img": "assets/img/alien.png"},
    {"img": "assets/img/yoda.png"},
    {"img": "assets/img/yoda.png"},
    {"img": "assets/img/yoda.png"},
    {"img": "assets/img/yoda.png"},
    {"img": "assets/img/yoda.png"},
    {"img": "assets/img/alien.png"},
  ];
  @override
  Widget build(BuildContext context) {
    // print('ini data $_data');
    return Scaffold(
      appBar: AppBar(
          title: Text('Page3'),
          backgroundColor: Color.fromARGB(255, 108, 26, 61)),
      body: Padding(
        padding: const EdgeInsets.only(top: 0, right: 10, left: 10),
        child: FutureBuilder<List<dynamic>>(
            future: _data,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return SizedBox(
                  width: 400,
                  height: 870,
                  child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return listMovie(
                        img: snapshot.data![index]['thumbnail'],
                        desc: snapshot.data![index]['description'],
                      );
                    },
                  ),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    color: Color.fromARGB(255, 4, 4, 4),
                  ),
                );
              }
            }),
      ),
    );
  }
}
