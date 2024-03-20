
import 'package:bloacexample/bloc/counter_blac.dart';
import 'package:bloacexample/bloc/counter_event.dart';
import 'package:bloacexample/bloc/counter_stat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class counter extends StatefulWidget {
  const counter({Key? key}) : super(key: key);

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Center(child: Text('Counter Example')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<bloclass, statclass>(builder: (context, state){
            return Text(state.value.toString());
          })
          ,


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                context.read<bloclass>().add(incrementclass());
              }, child: Text('Increment')),
              ElevatedButton(onPressed: (){
                context.read<bloclass>().add(decrementclass());
              }, child: Text('Increment')),
              // ElevatedButton(onPressed: (){
              //   context.read<counter_bl>().add(decrementcunter());
              // }, child: Text('Increment')),
            ],
          ),
        ],
      ),
    );
  }
}
