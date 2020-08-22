import 'package:dinbog/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureINjection(String env) {
  $initGetIt(getIt, environment: env);
}