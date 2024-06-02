part of 'google_authentication_bloc.dart';

sealed class GoogleAuthenticationEvent extends Equatable {
  const GoogleAuthenticationEvent();

  @override
  List<Object> get props => [];
}

class GoogleAuth extends GoogleAuthenticationEvent {}
