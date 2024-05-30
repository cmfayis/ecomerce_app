part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}
class SignUpPageState extends AuthState {}
class SignupState extends AuthState {}
class AuthenticatedState extends AuthState {}
class UnAuthenticatedState extends AuthState {}
class ErrorAuthenctionState extends AuthState {
  final String error;
  ErrorAuthenctionState({
    required this.error,
  });
}
