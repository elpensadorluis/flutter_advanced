import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dinbog/application/auth/auth_bloc.dart';
import 'package:dinbog/injection.dart';
import 'package:dinbog/presentation/routes/router.gr.dart' as r;
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:dinbog/generated/l10n.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of dinbog.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        )
      ],
      child: MaterialApp(
        title: 'dinbog',
        debugShowCheckedModeBanner: false,
        builder: ExtendedNavigator(router: r.Router()),
        // localizationsDelegates: [
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        //   // GlobalCupertinoLocalizations.delegates,
        //   S.delegate,
        // ],
        // supportedLocales: S.delegate.supportedLocales,
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.blue,
          accentColor: Colors.blueAccent,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
