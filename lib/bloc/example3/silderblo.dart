
import 'package:bloacexample/bloc/example3/silderevent.dart';
import 'package:bloacexample/bloc/example3/silderstate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class silderblo extends Bloc<silderevent, silderstate>{
  
  silderblo():super(silderstate()){
    on<silderchnage>(silder);
  }
  void silder(silderchnage event, Emitter<silderstate>emitter){
    emit(state.copyWith(value: event.value));
  }
}