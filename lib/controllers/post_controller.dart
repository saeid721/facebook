import 'package:get/get.dart';
import '../models/post.dart';

class PostController extends GetxController {
  var posts = <Post>[].obs; // Observable list of posts

  @override
  void onInit() {
    // Initialize with some sample posts
    posts.addAll([
      Post(username: "Minhazul Islam Saeid", content: "This is my first post!", imageUrl: "https://i0.wp.com/picjumbo.com/wp-content/uploads/beautiful-beach-free-image-after-sunset-sky-free-photo.jpeg", timeAgo: "2 hours ago"),
      Post(username: "Minhazul Islam Saeid", content: "Enjoying the sunny day!", timeAgo: "3 hours ago"),
      Post(username: "Minhazul Islam Saeid", content: "Just had a great lunch!", timeAgo: "5 hours ago"),
      Post(username: "Minhazul Islam Saeid", content: "Just had a great lunch!", timeAgo: "5 hours ago"),
      Post(username: "Minhazul Islam Saeid", content: "Just had a great lunch!", timeAgo: "5 hours ago"),
      Post(username: "Minhazul Islam Saeid", content: "Just had a great lunch!", timeAgo: "5 hours ago"),
      Post(username: "Minhazul Islam Saeid", content: "Just had a great lunch!", timeAgo: "5 hours ago"),
    ]);
    super.onInit();
  }

  void addPost(Post post) {
    posts.add(post); // Add a new post to the list
  }
}
