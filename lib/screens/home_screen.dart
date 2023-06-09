import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/default_app_text_form.dart';
import 'check_email_exist/check_email_exist_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? _emailValidation;
  late CheckEmailExistBloc _checkEmailExistBloc;

  @override
  void initState() {
    super.initState();
    _checkEmailExistBloc = context.read<CheckEmailExistBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CheckEmailExistBloc, CheckEmailExistState>(
            builder: (context, state) {
              if (state is ValidEmail) {
                _emailValidation = null;
              } else if (state is NotValidEmail) {
                _emailValidation = state.message;
              }
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: DefaultAppTextForm(
                  filled: false,
                  hintTxt: "email",
                  onChanged: (email) {
                    _checkEmailExistBloc.add(
                      ValidateEmail(email: email!),
                    );
                  },
                  autofillHints: const [AutofillHints.email],
                  errorText: _emailValidation,
                  inputData: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
              );
            },
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: const DefaultAppTextForm(
              hintTxt: "name",
              filled: false,
              autofillHints: [AutofillHints.countryName],
              inputData: TextInputType.text,
              textInputAction: TextInputAction.done,
            ),
          )
        ],
      ),
    );
  }
}
