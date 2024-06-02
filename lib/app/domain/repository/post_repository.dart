import 'package:flutter_application_3/app/data/models/post.dart';

abstract class PostRepository {
  Future<void> createPost(String id, Post post);
  Stream<List<Post>> fetchAllPost();
  Future<void> removePost(String id);
  Future<void> updatePost(Post post, String id);
  Future<List<Post>> fetchSpecificPosts(String id);
}
