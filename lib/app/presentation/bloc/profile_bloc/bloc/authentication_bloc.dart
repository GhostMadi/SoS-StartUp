import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_3/app/domain/repository/profile_repository.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final ProfileRepository repository;
  late final StreamSubscription subscription;
  AuthenticationBloc({required ProfileRepository profRepo})
      : repository = profRepo,
        super(Unknown()) {
    subscription = repository.userStream.listen((profileStream) {
      add(Authentication(user: profileStream!));
    });
    on<Authentication>((event, emit) {
      if (event.user != null) {
        emit(AuthenticationSuccess(user: event.user!));
      }
      emit(UnAuthentication());
    });
  }
  @override
  Future<void> close() {
    subscription.cancel();
    return super.close();
  }
}
