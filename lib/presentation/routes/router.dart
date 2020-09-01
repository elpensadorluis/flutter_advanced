import 'package:auto_route/auto_route_annotations.dart';
import 'package:dinbog/presentation/sign_in/sign_in_page.dart';
import 'package:dinbog/presentation/splash/splash_page.dart';
import 'package:dinbog/presentation/wall/wall_overview_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: WallOverviewPage),
  ],
)
class $Router {}
