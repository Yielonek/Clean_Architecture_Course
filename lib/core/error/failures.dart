import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

// abstract class Failure extends Equatable {
//    Failure([List properties = const<dynamic>[]]) : super(properties);
// }

// General failures
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}