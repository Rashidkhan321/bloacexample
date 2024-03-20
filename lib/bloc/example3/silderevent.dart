
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class silderevent extends Equatable{
  silderevent();

  @override
  List<Object> get props =>[];
}
class silderchnage extends silderevent{

  double value;
  silderchnage({required this.value});
  @override
  List<Object> get props => [value];
}

abstract class sildereventt extends Equatable{

  sildereventt();
  List<Object> get props =>[];

}
class events extends sildereventt{
  double value;
  events({required this .value});

  List<Object> get props=>[value];
}
class eventstats extends Equatable{

  double value;
  eventstats({this.value=.7});
  eventstats copyWith({double?value}){
    return eventstats(value: value??this.value);
  }
  @override
  List<Object> get props=>[];
}

class evenblo extends Bloc<sildereventt,eventstats >{
  evenblo():super(eventstats()){
    on<events>(getevent);
  }
  void getevent(events event,Emitter<eventstats> emitter){
    emit(state.copyWith(value: event.value));
  }
}