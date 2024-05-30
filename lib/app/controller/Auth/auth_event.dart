part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}
class CheckLoginStatusEvent extends AuthEvent {}
class SignUpPageEvent extends AuthEvent {}
class SignupEvent extends AuthEvent {
  final name;
  final email;
  final password;
  SignupEvent(
      {required this.name, required this.email, required this.password});
}

class LoginEvent extends AuthEvent {
  final email;
  final password;
  LoginEvent({required this.email, required this.password});
}
