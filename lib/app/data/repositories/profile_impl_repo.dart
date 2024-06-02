import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_3/app/data/models/profile.dart';
import 'package:flutter_application_3/app/domain/repository/profile_repository.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ProfileImpleRepo extends ProfileRepository {
  ProfileImpleRepo({FirebaseAuth? firebaseAuth})
      : auth = firebaseAuth ?? FirebaseAuth.instance;
  final FirebaseAuth auth;
  final dataProfile = FirebaseFirestore.instance.collection('users');
  final GoogleSignIn googleAuth = GoogleSignIn();

  //stream
  @override
  Stream<User?> get userStream => auth.authStateChanges();

  //google
  @override
  Future<void> createWithChromeAndSetData() async {
    final GoogleSignInAccount? googleUser = await googleAuth.signIn();
    if (googleUser == null) {}
    try {
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
      UserCredential userCredential =
          await auth.signInWithCredential(credential);
      User user = userCredential.user!;
      await dataProfile.doc(user.uid).set(Profile.empty().toMap());
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  //update
  @override
  Future<void> updateData(String id, Profile profile) async {
    try {
      await dataProfile.doc(id).update(profile.toMap());
    } on FirebaseException catch (e) {
      log(e.toString());
    }
  }

  @override
  Future<Profile> fetchProfile(String id) async {
    try {
      return await dataProfile
          .doc(id)
          .get()
          .then((user) => Profile.fromMap(user.data()!));
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> deleateProfie(String id) async {
    try {
      return await dataProfile.doc(id).delete();
    } catch (e) {
      log(e.toString());
    }
  }
}
