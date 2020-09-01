import 'package:auto_route/auto_route.dart';
import 'package:dinbog/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:dinbog/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dinbog/presentation/routes/router.gr.dart';

class CompanyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Company'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: () {
            ExtendedNavigator.of(context).replace(Routes.signUpPage);
          },
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        // child: TalentForm(),
        child: Text('Company FormWizard'),
      ),
    );
  }
}
