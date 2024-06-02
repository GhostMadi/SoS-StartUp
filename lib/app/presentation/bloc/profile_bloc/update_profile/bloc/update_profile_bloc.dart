import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_3/app/data/models/profile.dart';
import 'package:flutter_application_3/app/domain/repository/profile_repository.dart';

part 'update_profile_event.dart';
part 'update_profile_state.dart';

class UpdateProfileBloc extends Bloc<UpdateProfileEvent, UpdateProfileState> {
  final ProfileRepository repository;
  UpdateProfileBloc({required ProfileRepository profRepo})
      : repository = profRepo,
        super(UpdateProfileInitial()) {
    on<UpdateProfile>((event, emit) async {
      emit(ProfileUpdateLoading());
      try {
        await repository.updateData(event.id, event.profile);
        emit(ProfileUpdateSuccess());
      } catch (e) {
        emit(ProfileUpdateFailed());
      }
    });
  }
}
