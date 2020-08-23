import 'package:auto_route/auto_route_annotations.dart';
import 'package:dinbog/presentation/sign_in/sign_in_page.dart';
import 'package:dinbog/presentation/splash/splash_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @initial
  SplashPage splashPage;
  SignInPage singnInPage;
}
