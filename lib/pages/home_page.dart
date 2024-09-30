import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/post_controller.dart';
import '../widgets/new_post_widget.dart';
import '../widgets/post_widget.dart';
import '../widgets/story_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final PostController postController = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView( // Moved SingleChildScrollView to wrap the main column
        child: Column(
          children: [
            NewPostWidget(),
            _buildStoriesSection(),
            GetBuilder<PostController>(builder: (controller) {
              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(), // Disable scrolling of ListView
                shrinkWrap: true, // Allow ListView to take only needed space
                itemCount: controller.posts.length,
                itemBuilder: (context, index) {
                  return PostWidget(post: controller.posts[index]);
                },
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildStoriesSection() {
    return Container(
      height: 230,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Colors.grey, width: 5),
          bottom: BorderSide(color: Colors.grey, width: 5),
        ),
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          StoryWidget(username: 'Your Story', imageUrl: 'assets/images/profile_pic.jpg', isUserStory: true),
          StoryWidget(username: 'Hema Islam', imageUrl: 'assets/images/profile_pic.jpg'),
          StoryWidget(username: 'Saiham Islam', imageUrl: 'assets/images/profile_pic.jpg'),
          StoryWidget(username: 'Rakib Islam', imageUrl: 'assets/images/profile_pic.jpg'),
          StoryWidget(username: 'Misha Islam', imageUrl: 'assets/images/profile_pic.jpg'),
          StoryWidget(username: 'Rony Islam', imageUrl: 'assets/images/profile_pic.jpg'),
          // Add more stories as needed
        ],
      ),
    );
  }
}
