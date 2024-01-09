import 'package:flutter/material.dart';
import 'package:prak1/page2.dart';
import 'package:prak1/page3.dart';
import 'package:prak1/profil.dart';
import 'package:prak1/widget/listmovie.dart';

class bottomnav extends StatefulWidget {
  const bottomnav({super.key});

  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {
  int _selectIndex = 0;
  List<Widget> _screenList = [
    page2(),
    page3(),
    profil()
  ];

  void gantisc(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: gantisc,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'movie'),
          BottomNavigationBarItem(icon: Icon(Icons.manage_accounts), label: 'movie'),
          
          
        ],
      ),
    );
  }
}
