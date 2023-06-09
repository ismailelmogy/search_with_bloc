import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:search_with_bloc/screens/home_screen.dart';
import 'package:search_with_bloc/injection_container.dart' as di;
import 'bloc_app_observer.dart';
import 'screens/check_email_exist/check_email_exist_bloc.dart';

Future<void> main() async {
  await di.init();
  Bloc.observer = BlocAppObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocProvider(
            create: (_) => di.serviceLocator<CheckEmailExistBloc>(),
            child: const HomeScreen()));
  }
}
