import 'package:bloacexample/utls/imagesgetter.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

abstract class imageevent extends Equatable{

  imageevent();
  @override
  List<Object> get props =>[];

}

class camra extends imageevent{

}
class gallery extends imageevent{

}


class imagestate extends Equatable{
  final XFile ? file;
  imagestate({this.file});
  imagestate copyWith({XFile?file}){
    return imagestate(file:  file??this.file);
  }
  @override
  // TODO: implement props
  List<Object?> get props => [file];

}
class imageblo extends Bloc<imageevent, imagestate>{
   final imagegetter getter;
  imageblo(this.getter):super(imagestate()){
    on<camra>
      (getcamer);
    on<gallery>(getgallery);
  }
  void getcamer(camra event, Emitter<imagestate>emitter) async{
    XFile ? file = await getter.getc();
    emit(state.copyWith(file: file));
  }
  void getgallery (gallery event, Emitter<imagestate>emitter)async{
    XFile? file = await getter.imageg();
    emit(state.copyWith(file: file));
  }
}