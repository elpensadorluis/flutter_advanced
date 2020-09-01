import 'package:dinbog/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:dinbog/injection.dart';
import 'package:dinbog/presentation/sign_up/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Sign In'),
      // ),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: SignUpForm(),
      ),
    );
  }
}
