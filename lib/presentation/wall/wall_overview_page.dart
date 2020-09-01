// import 'package:dinbog/application/auth/auth_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dinbog/application/auth/auth_bloc.dart';
import 'package:dinbog/presentation/routes/router.gr.dart';
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
            title: const Text('The Wall'),
            leading: IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
                ExtendedNavigator.of(context).replace(Routes.signInPage);
              },
            ),
            actions: <Widget>[],
          ),
          body: Text('hola mundo'),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {},
          //   child: const Icon(Icons.add),
          // ),
        );
      },
    );
  }
}
