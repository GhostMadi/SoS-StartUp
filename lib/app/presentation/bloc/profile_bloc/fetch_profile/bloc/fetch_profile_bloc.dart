import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_3/app/data/models/profile.dart';
import 'package:flutter_application_3/app/domain/repository/profile_repository.dart';

part 'fetch_profile_event.dart';
part 'fetch_profile_state.dart';

class FetchProfileBloc extends Bloc<FetchProfileEvent, FetchProfileState> {
  final ProfileRepository repository;
  FetchProfileBloc({required ProfileRepository profileRepository})
      : repository = profileRepository,
        super(FetchProfileInitial()) {
    on<FetchProfile>((event, emit) async {
      emit(FetchProfileLoading());
      try {
        Profile profile = await repository.fetchProfile(event.id);
        emit(FetchProfileSuccess(profile: profile));
      } catch (e) {
        emit(FetchProfileFailed());
      }
    });
  }
}
