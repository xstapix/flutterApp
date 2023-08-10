import './auth_bloc.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoadedState extends AuthState {
 final Map user;
 final bool auth;

  AuthLoadedState(this.user, this.auth);
}