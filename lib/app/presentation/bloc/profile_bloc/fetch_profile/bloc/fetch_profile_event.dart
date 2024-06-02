part of 'fetch_profile_bloc.dart';

sealed class FetchProfileEvent extends Equatable {
  const FetchProfileEvent();

  @override
  List<Object> get props => [];
}

class FetchProfile extends FetchProfileEvent {
  final String id;
  const FetchProfile({required this.id});
}
