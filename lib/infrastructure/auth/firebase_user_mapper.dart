import 'package:firebase_auth/firebase_auth.dart';
import 'package:dinbog/domain/core/value_objects.dart';
import 'package:dinbog/domain/auth/user.dart';

extension FirebaseUserDomainX on FirebaseUser {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
