import 'package:flutter/material.dart';
import '../models/post.dart';

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with user info
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/profile_pic.jpg'), // Replace with your image
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(post.username, style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Text(post.timeAgo, style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            // Post content
            Text(post.content.isNotEmpty ? post.content : "No content provided."),
            if (post.imageUrl != null && post.imageUrl!.isNotEmpty) ...[
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(12), // Set the desired radius
                child: Image.network(
                  post.imageUrl!,
                  fit: BoxFit.cover, // Set the fit to cover for better appearance
                  width: double.infinity, // Make the image take the full width
                ),
              ),
            ],
            SizedBox(height: 10),
            // Action buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {}, // Add like functionality
                  icon: Icon(Icons.thumb_up, color: Colors.blue),
                  label: Text("Like", style: TextStyle(color: Colors.blue)),
                ),
                TextButton.icon(
                  onPressed: () {}, // Add comment functionality
                  icon: Icon(Icons.comment, color: Colors.blue),
                  label: Text("Comment", style: TextStyle(color: Colors.blue)),
                ),
                TextButton.icon(
                  onPressed: () {}, // Add share functionality
                  icon: Icon(Icons.share, color: Colors.blue),
                  label: Text("Share", style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
