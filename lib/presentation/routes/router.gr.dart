// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../sign_in/sign_in_page.dart';
import '../sign_up/company/company_page.dart';
import '../sign_up/sign_up_page.dart';
import '../sign_up/talent/talent_page.dart';
import '../splash/splash_page.dart';
import '../wall/wall_overview_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String wallOverviewPage = '/wall-overview-page';
  static const String signUpPage = '/sign-up-page';
  static const String talentPage = '/talent-page';
  static const String companyPage = '/company-page';
  static const all = <String>{
    splashPage,
    signInPage,
    wallOverviewPage,
    signUpPage,
    talentPage,
    companyPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.wallOverviewPage, page: WallOverviewPage),
    RouteDef(Routes.signUpPage, page: SignUpPage),
    RouteDef(Routes.talentPage, page: TalentPage),
    RouteDef(Routes.companyPage, page: CompanyPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    WallOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => WallOverviewPage(),
        settings: data,
      );
    },
    SignUpPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpPage(),
        settings: data,
      );
    },
    TalentPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => TalentPage(),
        settings: data,
      );
    },
    CompanyPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CompanyPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushWallOverviewPage() =>
      push<dynamic>(Routes.wallOverviewPage);

  Future<dynamic> pushSignUpPage() => push<dynamic>(Routes.signUpPage);

  Future<dynamic> pushTalentPage() => push<dynamic>(Routes.talentPage);

  Future<dynamic> pushCompanyPage() => push<dynamic>(Routes.companyPage);
}
