import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class FirstPage extends StatefulWidget {
  FirstPage({this.title}) : super(key: UniqueKey());
  final String title;
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    // fetchData();
    print(" first initState");
  }

  Future fetchData() async {
    Options ops = Options(
      baseUrl: "http://v.juhe.cn/",
      connectTimeout: 3000,
      receiveTimeout: 5000,
    );

    var dio = Dio(ops);
    Response res = await dio.get("historyWeather/weather", data: {
      "key": "9795025aa92ce94c97a4404d98d94a9e",
      "city_id": 1,
      "weather_date": "2018-01-01"
    });
    print(res.data.toString());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

}


