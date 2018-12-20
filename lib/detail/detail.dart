import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '详情',
          style: TextStyle(
            fontSize: 16,
            color: Colors.red,
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Text(
            '详情',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
