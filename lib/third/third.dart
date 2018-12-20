import 'package:flutter/material.dart';
class ThirdPage extends StatefulWidget {
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.black,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      print('third init');
    }
}
