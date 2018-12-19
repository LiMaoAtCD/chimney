import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({this.title}): super(key: UniqueKey());
  final String title;
  _FirstPageState createState() => _FirstPageState();

}

class _FirstPageState extends State<FirstPage> {

  @override
    void initState() {
      print('initstate is called');
      super.initState();
    }

    @override
      void didChangeDependencies() {
        print('didChangeDependencies');
        super.didChangeDependencies();
      }

      @override
        void deactivate() {
          print('deactivate');
          super.deactivate();
        }

        @override
          void dispose() {
            print('dispose');
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
}