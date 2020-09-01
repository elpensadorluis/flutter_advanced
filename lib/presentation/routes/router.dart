import 'package:auto_route/auto_route_annotations.dart';
import 'package:dinbog/presentation/sign_in/sign_in_page.dart';
import 'package:dinbog/presentation/sign_up/company/company_page.dart';
import 'package:dinbog/presentation/sign_up/sign_up_page.dart';
import 'package:dinbog/presentation/sign_up/talent/talent_page.dart';
import 'package:dinbog/presentation/splash/splash_page.dart';
import 'package:dinbog/presentation/wall/wall_overview_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: WallOverviewPage),
    MaterialRoute(page: SignUpPage),
    MaterialRoute(page: TalentPage),
    MaterialRoute(page: CompanyPage),
  ],
)
class $Router {}
