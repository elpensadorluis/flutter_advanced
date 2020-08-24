import 'package:dinbog/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:dinbog/generated/l10n.dart';

import 'package:dinbog/presentation/core/constants.dart';

class SignInForm extends StatelessWidget {
  final bool loading = false;
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
              // TODO: Navigate
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidate: state.showErrorMessages,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.2, 2],
                colors: [Color(0xFF1181C3), Colors.black],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: ListView(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 55.0),
                      _titleDinbog(context),
                      SizedBox(height: 40.0),
                      _buildEmailTF(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildPasswordTF(),
                      _buildLoginBtn(),
                      _buildForgotPasswordBtn(),
                      _outlineButtonSignUpFacebook(),
                      SizedBox(height: 40.0),
                      InkWell(
                        onTap: () =>
                            Navigator.popAndPushNamed(context, 'landing'),
                        child: Container(
                            margin: EdgeInsets.only(
                              top: 8.0,
                              bottom: 20.0,
                            ),
                            child: Text(
                              // AppLocalization.of(context)
                              // .donthaveAnAccountSignup,
                              "Don't have an account? Sign up.",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
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
}

Widget _titleDinbog(context) {
  return Text(
    // S.of(context).dinbog,
    'dinbog',
    style: TextStyle(
        fontSize: 53,
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontFamily: "Montserrat",
        letterSpacing: -3),
  );
}

Widget _buildEmailTF() {
  return Container(
    alignment: Alignment.centerLeft,
    decoration: kBoxDecorationStyle,
    height: 56.0,
    child: TextField(
      // controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'OpenSans',
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(top: 14.0),
        prefixIcon: Icon(
          Icons.email,
          color: Colors.white,
        ),
        // hintText: AppLocalization.of(context).email,
        hintText: 'email',
        hintStyle: kHintTextStyle,
      ),
    ),
  );
}

Widget _buildPasswordTF() {
  return Container(
    alignment: Alignment.centerLeft,
    decoration: kBoxDecorationStyle,
    height: 56.0,
    child: TextField(
      // controller: _passwordController,
      obscureText: true,
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'OpenSans',
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(top: 14.0),
        prefixIcon: Icon(
          Icons.lock,
          color: Colors.white,
        ),
        // hintText: AppLocalization.of(context).password,
        hintText: 'Password',
        hintStyle: kHintTextStyle,
      ),
    ),
  );
}

Widget _buildForgotPasswordBtn() {
  return Container(
    alignment: Alignment.centerRight,
    child: FlatButton(
      onPressed: () {},
      child: Center(
        child: Text(
          // AppLocalization.of(context).forgotYourPassword,
          'Forgot your password?',
          style: TextStyle(
              color: Colors.grey[50],
              fontWeight: FontWeight.w300,
              fontSize: 13.0),
        ),
      ),
    ),
  );
}

Widget _buildLoginBtn() {
  return Container(
    padding: EdgeInsets.only(top: 30.0, bottom: 5.0),
    width: double.infinity,
    child: RaisedButton(
        elevation: 5.0,
        onPressed: () {},
        padding: EdgeInsets.all(14.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.white,
        child: setUpButtonChild()),
  );
}

Widget _textLogin() {
  return Text(
    // AppLocalization.of(context).login,
    'LOGIN',
    style: TextStyle(
      color: Color(0xFF527DAA),
      letterSpacing: 1.5,
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'OpenSans',
    ),
  );
}

Widget _outlineButtonSignUpFacebook() {
  return Column(
    children: <Widget>[
      //SizedBox(height: 10,),
      // Row(
      //   children: <Widget>[
      //     Expanded(child: Divider(color: Colors.grey[300], endIndent: 10.0, indent: 10.0,)),
      //     Text(AppLocalization.of(context).or, style: TextStyle(fontSize: 18.0, color: Colors.grey[300], fontWeight: FontWeight.w300),),
      //     Expanded(child: Divider(color: Colors.grey[300], endIndent: 10.0, indent: 10.0,)),
      //   ],
      // ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Ionicons.logo_facebook,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3.0, left: 5),
            child: Text(
              // AppLocalization.of(context).logInWithFacebook,
              'Log In With Facebook',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget setUpButtonChild() {
  const _state = 0;
  if (_state == 0) {
    return _textLogin();
  } else if (_state == 1) {
    return Container(
      height: 23,
      width: 23,
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
      ),
    );
  } else {
    return _textLogin();
  }
}
