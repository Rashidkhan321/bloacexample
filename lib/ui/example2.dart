import 'package:bloacexample/bloc/example2/switch_blo.dart';
import 'package:bloacexample/bloc/example2/switch_event.dart';
import 'package:bloacexample/bloc/example2/switch_state.dart';
import 'package:bloacexample/bloc/example3/silderblo.dart';
import 'package:bloacexample/bloc/example3/silderevent.dart';
import 'package:bloacexample/bloc/example3/silderstate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class example2 extends StatefulWidget {
  const example2({Key? key}) : super(key: key);

  @override
  State<example2> createState() => _example2State();
}

class _example2State extends State<example2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text('Notification'),
                  BlocBuilder<switchblo, switchstate>(
                      buildWhen: (previous, current) =>previous.isswitch !=current.isswitch ,
                      builder: (context, state){
                        print('notifixtion');

                    return Switch(value:state.isswitch, onChanged: (value){
                      context.read<switchblo>().add(switchon());

                    });
                  })
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          BlocBuilder<silderblo, silderstate>(builder: (context, state){
            return   Container(
              height: 200,
              width: 600,
              color: Colors.red.withOpacity(state.value),
            );

          }),

          SizedBox(height: 20,),
          BlocBuilder<silderblo, silderstate>(

              builder: (context, state){

            print('silder');
            return Slider(value: state.value, onChanged: (value){
              context.read<silderblo>().add(silderchnage(value: value));

            });
          })
        ],
      ),
    );
  }
}
