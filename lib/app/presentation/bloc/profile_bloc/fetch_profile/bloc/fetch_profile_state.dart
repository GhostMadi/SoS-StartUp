part of 'fetch_profile_bloc.dart';

sealed class FetchProfileState extends Equatable {
  const FetchProfileState();

  @override
  List<Object> get props => [];
}

final class FetchProfileInitial extends FetchProfileState {}

class FetchProfileSuccess extends FetchProfileState {
  final Profile profile;
  const FetchProfileSuccess({required this.profile});
}

class FetchProfileFailed extends FetchProfileState {}

class FetchProfileLoading extends FetchProfileState {}
