import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/post_controller.dart';
import '../widgets/new_post_widget.dart';
import '../widgets/post_widget.dart';

class PostPage extends StatelessWidget {
  final PostController postController = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          NewPostWidget(), // New post input widget
          Expanded(
            child: GetBuilder<PostController>(
              builder: (controller) {
                return ListView.builder(
                  itemCount: controller.posts.length,
                  itemBuilder: (context, index) {
                    return PostWidget(post: controller.posts[index]); // Display each post
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
