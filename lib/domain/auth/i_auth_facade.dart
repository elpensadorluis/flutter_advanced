import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:dinbog/domain/auth/auth_failure.dart';
import 'package:dinbog/domain/auth/user.dart';

import 'package:dinbog/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithFacebook();
  Future<void> signOut();
}
