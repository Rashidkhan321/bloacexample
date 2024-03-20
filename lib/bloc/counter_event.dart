//
// import 'package:equatable/equatable.dart';
//
// abstract class  counter_event extends Equatable{
//  const counter_event();
//   @override
//   List<Object> get props=>[];
// }
// class incrementcounter extends counter_event{}
// class decermentcounter extends counter_event{}

// import 'package:bloacexample/bloc/counter_stat.dart';
// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
//
// abstract class counter_event extends Equatable{
//
//   counter_event();
//   @override
//
//   // TODO: implement props
//   List<Object?> get props => [];
// }
//
// class incrementcunter extends counter_event{}
// class decrementcunter extends counter_event{}
//
//
//
//
//

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

abstract class counter_event extends Equatable{

  counter_event();
   @override
  // TODO: implement props
  List<Object?> get props => [];

}
class incrementclass extends counter_event{}
class decrementclass extends counter_event{}

class statclass extends Equatable{
   final int value;
   statclass({this.value=2});
    statclass copyWith({int?value}){

      return statclass(value:  value??this.value);
   }

  @override
  // TODO: implement props
  List<Object?> get props => [value];

}

class bloclass extends Bloc<counter_event, statclass>{
  bloclass():super(statclass()){
    on<incrementclass>(icrement);
    on<decrementclass>(dcrement);

  }
  void icrement(incrementclass event, Emitter<statclass>emitter){
    emit(state.copyWith(value: state.value+1));
  }
  void dcrement(decrementclass event, Emitter<statclass>emitter){
    emit(state.copyWith(value: state.value-1));
  }

}


