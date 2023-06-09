import 'package:get_it/get_it.dart';
import 'screens/check_email_exist/check_email_exist_bloc.dart';

final serviceLocator = GetIt.instance;
Future<void> init() async {
  // Blocs
  serviceLocator
      .registerFactory<CheckEmailExistBloc>(() => CheckEmailExistBloc());
}
