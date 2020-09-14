import 'package:auto_route/auto_route.dart';
import 'package:sentu/application/auth/auth_bloc.dart';
import 'package:sentu/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WallOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("SENTU"),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.exit_to_app),
                onPressed: () {
                  context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
                  ExtendedNavigator.of(context).replace(Routes.signInPage);
                },
              ),
            ],
          ),
          body: const Text('Hello World...'),
        );
      },
    );
  }
}
