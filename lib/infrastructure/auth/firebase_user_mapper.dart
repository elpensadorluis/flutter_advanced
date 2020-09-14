import 'package:firebase_auth/firebase_auth.dart';
import 'package:sentu/domain/core/value_objects.dart';
import 'package:sentu/domain/auth/user.dart';

extension FirebaseUserDomainX on FirebaseUser {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
