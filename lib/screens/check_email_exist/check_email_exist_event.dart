part of 'check_email_exist_bloc.dart';

abstract class CheckEmailExistEvent extends Equatable {
  const CheckEmailExistEvent();

  @override
  List<Object> get props => [];
}

class ValidateEmail extends CheckEmailExistEvent {
  final String email;

  const ValidateEmail({required this.email});

  @override
  List<Object> get props => [email];
}
