
import 'package:bloacexample/bloc/example2/switch_event.dart';
import 'package:bloacexample/bloc/example2/switch_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class switchblo extends Bloc<switchevent, switchstate>{

  switchblo():super(switchstate()){
    on<switchon>(swtich);
  }
  void swtich(switchon event, Emitter<switchstate> emitter){
    emit(state.copyWith(isswitch: !state.isswitch));
  }
}