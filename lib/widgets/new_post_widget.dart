import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/post_controller.dart';
import '../models/post.dart';
import 'package:image_picker/image_picker.dart';

class NewPostWidget extends StatefulWidget {
  const NewPostWidget({super.key});

  @override
  State<NewPostWidget> createState() => _NewPostWidgetState();
}

class _NewPostWidgetState extends State<NewPostWidget> {
  final PostController postController = Get.find();

  final TextEditingController _controller = TextEditingController();

  final ImagePicker _picker = ImagePicker();

  XFile? _pickedFile;
 // Updated to use XFile
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/profile_pic.jpg'), // Replace with your image
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: "What's on your mind?",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.image, color: Colors.green,),
                onPressed: () async {
                  _pickedFile = await _picker.pickImage(source: ImageSource.gallery);
                  if (_pickedFile != null) {
                    // No need to assign path separately
                    postController.update(); // Notify GetX to rebuild
                  }
                },
              ),
              // IconButton(
              //   icon: const Icon(Icons.send),
              //   onPressed: () {
              //     if (_controller.text.isNotEmpty || _pickedFile != null) {
              //       postController.addPost(Post(
              //         username: "User",
              //         content: _controller.text,
              //         timeAgo: "Just now",
              //         imageUrl: _pickedFile?.path, // Include the image URL
              //       ));
              //       _controller.clear(); // Clear the input field
              //       _pickedFile = null; // Clear the picked image
              //       postController.update(); // Notify GetX to rebuild
              //     }
              //   },
              // ),
            ],
          ),
          // Optionally display the selected image
          if (_pickedFile != null) ...[
            const SizedBox(height: 10),
            Image.file(File(_pickedFile!.path), height: 150, width: double.infinity, fit: BoxFit.cover), // Display the selected image
          ],
        ],
      ),
    );
  }
}
