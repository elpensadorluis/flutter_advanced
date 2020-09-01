import 'package:auto_route/auto_route.dart';
import 'package:dinbog/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dinbog/presentation/routes/router.gr.dart';

class SignUpForm extends StatelessWidget {
  final bool loading = false;
  final Color colorWhite = Colors.white;
  final FontWeight fontW500 = FontWeight.w500;
  final bool talentSelected = false;
  final bool busniessSelected = false;
  // final int _state = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid email and password combination',
                ),
              ).show(context);
            },
            (_) {
              // ExtendedNavigator.of(context).replace(Routes.wallOverviewPage);
              // context
              //     .bloc<AuthBloc>()
              //     .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.2, 2],
                  colors: [Color(0xFF1181C3), Colors.black])),
          child: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 60,
                  ),
                  _titleDinbog(),
                  SizedBox(
                    height: 60,
                  ),
                  _textRegisterAs(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 180,
                        width: 130,
                        child: Container(
                          padding: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: talentSelected
                                  ? Colors.black26
                                  : Colors.transparent),
                          // Talent button
                          child: FlatButton(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(bottom: 11.0),
                                  child: SizedBox(
                                    height: 100,
                                    width: 100,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    border: Border.all(
                                        width: 3.0, color: colorWhite),
                                  ),
                                ),
                                Text(
                                  'Talent',
                                  style: TextStyle(
                                      color: colorWhite, fontSize: 14.0),
                                ),
                              ],
                            ),
                            onPressed: () {
                              print('Toma Talento...');
                              ExtendedNavigator.of(context)
                                  .replace(Routes.talentPage);
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        height: 180,
                        width: 130,
                        child: Container(
                          padding: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: busniessSelected
                                  ? Colors.black26
                                  : Colors.transparent),
                          //Company button
                          child: FlatButton(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(bottom: 11.0),
                                  child: SizedBox(
                                    height: 100,
                                    width: 100,
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                        width: 3.0,
                                        color: colorWhite,
                                      )),
                                ),
                                Text(
                                  'Company',
                                  style: TextStyle(
                                      color: colorWhite, fontSize: 14.0),
                                )
                              ],
                            ),
                            onPressed: () {
                              print('Toma Compañia...');
                              ExtendedNavigator.of(context)
                                  .replace(Routes.companyPage);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Column(
                    children: <Widget>[
                      // SizedBox(
                      //   height: 20,
                      // ),
                      FlatButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: Text(
                            'Are already registered? Log in',
                            style: TextStyle(color: colorWhite),
                          ),
                          onPressed: () {
                            ExtendedNavigator.of(context)
                                .replace(Routes.signInPage);
                          }),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _titleDinbog() {
    return Text(
      'dinbog',
      style: TextStyle(
          fontSize: 60,
          color: colorWhite,
          fontWeight: FontWeight.w500,
          fontFamily: "Montserrat",
          letterSpacing: -3),
    );
  }

  Widget _textRegisterAs() {
    return Container(
      child: Text(
        'Register as',
        style: TextStyle(color: colorWhite, fontWeight: fontW500),
      ),
    );
  }

  // Widget _nextStep(context) {
  //   return Builder(
  //     builder: (context) => SizedBox(
  //       width: double.infinity,
  //       child: RaisedButton(
  //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  //         color: Colors.blue,
  //         child: Text(
  //           AppLocalization.of(context).nextStep,
  //           style: TextStyle(fontSize: 14.0, color: Colors.white),
  //         ),
  //         onPressed: () async {
  //           print(talentSelected);
  //           if (talentSelected) {
  //             final prefs = await SharedPreferences.getInstance();
  //             final key = 'my_talent_key';
  //             final value = 1;
  //             prefs.setInt(key, value);
  //             print('saved $value');
  //             print('----------- Talent -----------');
  //             Navigator.of(context).pushNamed('accountFormTalent',
  //                 arguments: TypeRegister(1, 'Talent'));
  //           } else if (busniessSelected) {
  //             print('----------- Company -----------');
  //             Navigator.of(context).pushNamed('accountFormCompany',
  //                 arguments: TypeRegister(2, 'Company'));
  //           } else {
  //             Scaffold.of(context).showSnackBar(SnackBar(
  //               content: Text(
  //                 AppLocalization.of(context).selectOption,
  //               ),
  //               duration: Duration(seconds: 3),
  //             ));
  //           }
  //         },
  //       ),
  //     ),
  //   );
  // }

}
