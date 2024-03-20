
import 'package:equatable/equatable.dart';

class silderstate extends Equatable{

  double value;
  silderstate({this.value=0.6});
  silderstate copyWith({double?value}){
    return silderstate(value: value??this.value);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [value];


}