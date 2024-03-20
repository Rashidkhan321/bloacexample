
import 'package:equatable/equatable.dart';

class switchstate extends Equatable{

  bool isswitch;
  switchstate({this.isswitch=false});
  switchstate copyWith({bool? isswitch}){
    return switchstate(isswitch: isswitch??this.isswitch);
  }

  @override
  // TODO: implement props
  List<Object?> get props =>[isswitch];
}