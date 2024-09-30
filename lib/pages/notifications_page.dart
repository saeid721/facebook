import 'package:flutter/material.dart';
import '../models/notification.dart';
import '../widgets/notification_widget.dart';

class NotificationsPage extends StatelessWidget {
  NotificationsPage({super.key});

  final List<UserNotification> notifications = [
    UserNotification(
      username: "User1",
      content: "liked your post.",
      timeAgo: "2 hours ago",
      imageUrl: "https://via.placeholder.com/150",
    ),
    UserNotification(
      username: "User2",
      content: "commented on your photo.",
      timeAgo: "3 hours ago",
      imageUrl: "https://via.placeholder.com/150",
    ),
    UserNotification(
      username: "User3",
      content: "sent you a friend request.",
      timeAgo: "5 hours ago",
      imageUrl: "https://via.placeholder.com/150",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return NotificationWidget(notification: notifications[index]);
        },
      ),
    );
  }
}
