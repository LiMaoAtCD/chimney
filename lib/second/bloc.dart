import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:async';

class Counter extends StatefulWidget {
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  final CounterBloc _counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      bloc: _counterBloc,
      child: CounterPage(),
    );
  }
}

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc _countBloc = BlocProvider.of<CounterBloc>(context);
    return Column(
      children: <Widget>[
        BlocBuilder<CounterEvent, int>(
          bloc: _countBloc,
          builder: (BuildContext context, int count) {
            return Center(child: Text('$count', style: TextStyle(fontSize: 24.0,),),);
          },
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RaisedButton(
            onPressed: (){
              _countBloc.dispatch(Increment());
            },
          ),
        ),
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: RaisedButton(
            onPressed: (){
              _countBloc.dispatch(Decrement());
            },
          ),
        ),

      ],
    );
  }
}

abstract class  CounterEvent {

}

class Increment extends CounterEvent {
  String toString() => 'Increment';
}

class Decrement extends CounterEvent {
  String toString() => 'Decrement';
}

class CounterBloc extends Bloc<CounterEvent, int> {
  @override
    int get initialState => 0;

  @override
  Stream<int> mapEventToState(int currentState, CounterEvent event) async* {
    if (event is Increment) {
      yield currentState + 1;
    } 
    if (event is Decrement) {
      yield currentState - 1;
    }
  } 
}
