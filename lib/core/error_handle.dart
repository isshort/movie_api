import 'package:equatable/equatable.dart';

class ErrorHandle extends Equatable {
  final String message;

  const ErrorHandle(this.message);

  @override
  List<Object?> get props => [message];
}
