import 'package:flutter/material.dart';
import '../models/post.dart';

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with user info
            Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/profile_pic.jpg'), // Replace with your image
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(post.username, style: const TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      Text(post.timeAgo, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Post content
            Text(post.content.isNotEmpty ? post.content : "No content provided."),
            if (post.imageUrl != null && post.imageUrl!.isNotEmpty) ...[
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(12), // Set the desired radius
                child: Image.network(
                  post.imageUrl!,
                  fit: BoxFit.cover, // Set the fit to cover for better appearance
                  width: double.infinity, // Make the image take the full width
                ),
              ),
            ],
            const SizedBox(height: 10),
            // Action buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {}, // Add like functionality
                  icon: const Icon(Icons.thumb_up, color: Colors.blue),
                  label: const Text("Like", style: TextStyle(color: Colors.blue)),
                ),
                TextButton.icon(
                  onPressed: () {}, // Add comment functionality
                  icon: const Icon(Icons.comment, color: Colors.blue),
                  label: const Text("Comment", style: TextStyle(color: Colors.blue)),
                ),
                TextButton.icon(
                  onPressed: () {}, // Add share functionality
                  icon: const Icon(Icons.share, color: Colors.blue),
                  label: const Text("Share", style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
