import 'dart:io';

import 'package:bloacexample/bloc/imagesgetter/image_pic_bloc.dart';
import 'package:bloacexample/bloc/imagesgetter/image_pic_event.dart';
import 'package:bloacexample/bloc/imagesgetter/image_pic_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class imagess extends StatefulWidget {
  const imagess({Key? key}) : super(key: key);

  @override
  State<imagess> createState() => _imagessState();
}

class _imagessState extends State<imagess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100,),
            BlocBuilder<imageblo, imagestate>(builder: (context, state) {
              if (state.file == null) {
                return InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('GET IMAGE'),
                            actions: [
                              InkWell(
                                onTap: () {
                                  context.read<imageblo>().add(camra());
                                },
                                child: CircleAvatar(
                                  child: Icon(Icons.camera),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  context.read<imageblo>().add(gallery());
                                },
                                child: CircleAvatar(
                                  child: Icon(Icons.image),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  child: Icon(Icons.add),
                );
              } else {
                return Image.file(File(state.file!.path.toString()));
              }
            }),
          ],
        ),
      ),
    );
  }
}
