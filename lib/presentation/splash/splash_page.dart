import 'package:auto_route/auto_route.dart';
import 'package:dinbog/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dinbog/application/auth/auth_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            print('I am authenticated in dinbog!');
          },
          /*=> ExtendedNavigator.of(context).pushReplacementNamed(Route),*/
          unauthenticated: (_) => ExtendedNavigator.of(context)
              .pushReplacementNamed(Routes.singnInPage),
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
