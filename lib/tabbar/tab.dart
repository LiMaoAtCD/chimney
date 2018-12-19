import 'package:flutter/material.dart';
import 'package:chimney/firstpage/firstpage.dart';
import 'package:chimney/second/second.dart';
import 'package:chimney/third/third.dart';

class ChimneyTabbar extends StatefulWidget {
  _ChimneyTabbarstate createState() => _ChimneyTabbarstate();
}

class _ChimneyTabbarstate extends State<ChimneyTabbar> {
  var _currentIndex = 0;
  List<StatefulWidget> _mainBodys;
  final titles = ["主页", "分类", "我的"];

  @override
  Widget build(BuildContext context) {
    _mainBodys = [
    FirstPage(title: titles[0],),
    SecondPage(),
    ThirdPage()
  ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: buildBottomNavigationBarItems(),
        currentIndex: _currentIndex,
        onTap: _tabbarTapped,
      ),
      body: _mainBodys[_currentIndex],
    );
  }

  @override
  void initState() {
  
    super.initState();
  
  }

  void _tabbarTapped(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<BottomNavigationBarItem> buildBottomNavigationBarItems() {
    final icons = [Icons.access_alarm, Icons.access_time, Icons.account_box];
    var list = List<BottomNavigationBarItem>();
    for (var i = 0; i < titles.length; i++) {
      final item = BottomNavigationBarItem(
        title: Text(
          titles[i],
          style:
              TextStyle(color: _currentIndex == i ? Colors.blue : Colors.grey),
        ),
        icon: Icon(icons[i]),
      );
      list.add(item);
    }
    return list;
  }
}
