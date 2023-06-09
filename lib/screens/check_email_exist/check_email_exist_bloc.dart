import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_transform/stream_transform.dart';

part 'check_email_exist_event.dart';
part 'check_email_exist_state.dart';

const duration = Duration(milliseconds: 1000);

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}

class CheckEmailExistBloc
    extends Bloc<CheckEmailExistEvent, CheckEmailExistState> {
  CheckEmailExistBloc() : super(CheckEmailExistInitial()) {
    on<ValidateEmail>(_checkEmailExist, transformer: debounce(duration));
  }

  Future<void> _checkEmailExist(
    ValidateEmail event,
    Emitter<CheckEmailExistState> emit,
  ) async {
    emit(CheckEmailExistInitial());
    if (event.email != "ismailelmogy@gmail.com") {
      emit(ValidEmail());
    } else {
      emit(const NotValidEmail(message: "email already used"));
    }
  }
}
