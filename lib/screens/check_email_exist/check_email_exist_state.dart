part of 'check_email_exist_bloc.dart';

abstract class CheckEmailExistState extends Equatable {
  const CheckEmailExistState();

  @override
  List<Object?> get props => [];
}

class CheckEmailExistInitial extends CheckEmailExistState {}

class ValidEmail extends CheckEmailExistState {}

class NotValidEmail extends CheckEmailExistState {
  final String? message;
  const NotValidEmail({this.message});
  @override
  List<Object?> get props => [message];
}
