part of 'authentication_bloc.dart';

sealed class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class Authentication extends AuthenticationEvent {
  final User? user;
  const Authentication({required this.user});
}
