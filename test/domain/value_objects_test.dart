import 'package:flutter_test/flutter_test.dart';
import 'package:sentu/domain/auth/value_objects.dart';

void main() {
  test(
    "Email value is valid",
    () {
      const String initial = "anchastreluis@gmail.com";
      final String valueEmail = EmailAddress(initial).getOrCrash();

      expect(valueEmail, "anchastreluis@gmail.com");
    },
  );
  test(
    "Password is valid",
    () {
      const String initial = "123456";
      final String valuePassword = Password(initial).getOrCrash();

      expect(valuePassword, "123456");
    },
  );
}
