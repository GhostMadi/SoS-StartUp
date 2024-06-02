// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_3/app/domain/repository/profile_repository.dart';

part 'google_authentication_event.dart';
part 'google_authentication_state.dart';

class GoogleAuthenticationBloc
    extends Bloc<GoogleAuthenticationEvent, GoogleAuthenticationState> {
  final ProfileRepository repository;
  GoogleAuthenticationBloc({required ProfileRepository profRepo})
      : repository = profRepo,
        super(GoogleAuthenticationInitial()) {
    on<GoogleAuth>((event, emit) async {
      emit(GoogleAuthLoading());
      try {
        await repository.createWithChromeAndSetData();
        emit(GoogleAuthSuccess());
      } catch (e) {
        emit(GoogleAuthFailed());
      }
    });
  }
}
