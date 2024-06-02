import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_3/app/data/models/post.dart';
import 'package:flutter_application_3/app/domain/repository/post_repository.dart';

class RepositoryImplement extends PostRepository {
  final postData = FirebaseFirestore.instance.collection('post');

  //create Post
  @override
  Future<void> createPost(String id, Post post) async {
    try {
      await postData.doc(id).set(post.toMap());
    } on FirebaseException catch (e) {
      log(e.toString());
    }
  }

  //read Post
  @override
  Stream<List<Post>> fetchAllPost() {
    try {
      return postData.snapshots().map((data) => data.docs.map((doc) {
            return Post.fromMap(doc.data());
          }).toList());
    } on FirebaseException catch (e) {
      log(e.toString());
      return Stream.value([]);
    }
  }

  //deleat Post
  @override
  Future<void> removePost(String id) async {
    try {
      await postData.doc(id).delete();
    } on FirebaseException catch (e) {
      log(e.toString());
    }
  }

  //update Post
  @override
  Future<void> updatePost(Post post, String id) async {
    try {
      await postData.doc(id).update({});
    } on FirebaseException catch (e) {
      log(e.toString());
    }
  }

  @override
  Future<List<Post>> fetchSpecificPosts(String id) async {
    try {
      List<Post> posts = [];
      final Post post = await postData
          .doc(id)
          .get()
          .then((snapshot) => Post.fromMap(snapshot.data()!));
      posts.add(post);
      return posts;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
