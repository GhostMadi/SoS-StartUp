import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_3/app/data/models/profile.dart';

abstract class ProfileRepository {
  Stream<User?> get userStream;
  Future<void> createWithChromeAndSetData();
  Future<void> updateData(String id, Profile profile);
  Future<Profile> fetchProfile(String id);
  Future<void> deleateProfie(String id);
}
