part of 'update_profile_bloc.dart';

sealed class UpdateProfileEvent extends Equatable {
  const UpdateProfileEvent();

  @override
  List<Object> get props => [];
}

class UpdateProfile extends UpdateProfileEvent {
  final String id;
  final Profile profile;
  const UpdateProfile({required this.id, required this.profile});
}
