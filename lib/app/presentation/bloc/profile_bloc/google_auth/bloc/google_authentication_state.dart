part of 'google_authentication_bloc.dart';

sealed class GoogleAuthenticationState extends Equatable {
  const GoogleAuthenticationState();

  @override
  List<Object> get props => [];
}

final class GoogleAuthenticationInitial extends GoogleAuthenticationState {}

class GoogleAuthSuccess extends GoogleAuthenticationState {}

class GoogleAuthFailed extends GoogleAuthenticationState {}

class GoogleAuthLoading extends GoogleAuthenticationState {}
