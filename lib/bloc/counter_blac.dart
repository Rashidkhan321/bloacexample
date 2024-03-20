// import 'package:bloacexample/bloc/counter_event.dart';
// import 'package:bloacexample/bloc/counter_stat.dart';
// import 'package:bloc/bloc.dart';
//
// class counter_bloc extends  Bloc<counter_event, counter_stat>{
//
//   counter_bloc() :super(counter_stat() ){
//     on<incrementcounter>(increment);
//     on<decermentcounter>(decrment);
//
//   }
//   void increment(incrementcounter event, Emitter<counter_stat> emit){
//     emit(state.copyWith(counter: state.counter+1));
//
//
//
//   }
//   void decrment(decermentcounter event, Emitter<counter_stat> emit){
//     emit(state.copyWith(counter:  state.counter-1));
//   }
//
//
// }
//
// class count  extends Bloc<counter_event, counter_stat>{
//
//   count():super(counter_stat()){
//     on<incrementcounter>(inct);
//   }
//   void inct(incrementcounter event, Emitter<counter_stat>emitter){
//
//   }
// }