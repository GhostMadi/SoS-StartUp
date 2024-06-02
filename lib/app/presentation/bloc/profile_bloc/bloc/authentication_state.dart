part of 'authentication_bloc.dart';

sealed class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

final class AuthenticationInitial extends AuthenticationState {}

class AuthenticationSuccess extends AuthenticationState {
  final User user;
  const AuthenticationSuccess({required this.user});
}

class UnAuthentication extends AuthenticationState {}

class Unknown extends AuthenticationState {}
