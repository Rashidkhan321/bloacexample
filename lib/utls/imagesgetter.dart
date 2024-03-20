

import 'package:bloacexample/bloc/imagesgetter/image_pic_event.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class imagegetter{
  final ImagePicker picker = ImagePicker();


  Future<XFile?> imageg() async{
    XFile? file = await picker.pickImage(source: ImageSource.gallery);
    return file;
  }
  Future<XFile?> getc() async{
    XFile ?file =await picker.pickImage(source: ImageSource.camera);
    return file;
  }
}
