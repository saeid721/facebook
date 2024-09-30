import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/profile_pic.jpg'), // Add your profile picture here
          ),
          SizedBox(height: 8),
          Text("Username", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Text("Bio goes here", style: TextStyle(color: Colors.grey)),
          SizedBox(height: 16),
          Text("Posts", style: TextStyle(fontSize: 20)),
          // You can display user's posts here as well
        ],
      ),
    );
  }
}
