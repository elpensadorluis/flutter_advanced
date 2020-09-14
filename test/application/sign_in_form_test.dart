import 'package:flutter_test/flutter_test.dart';
import 'package:sentu/application/auth/auth_bloc.dart';
import 'package:bloc_test/bloc_test.dart';

class MockAuthBloc extends MockBloc<AuthState> implements AuthBloc {}

void main() {
  MockAuthBloc mockAuthBloc;

  setUp(() {
    mockAuthBloc = MockAuthBloc();
  });

  test(
    'Auth mocked Bloc test',
    () {
      whenListen(
        mockAuthBloc,
        Stream.fromIterable([const AuthState.initial()]),
      );
      expectLater(
        mockAuthBloc,
        emitsInOrder([const AuthState.initial()]),
      );
    },
  );
}
