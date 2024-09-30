// models/user_notification.dart
class UserNotification {
  final String username;
  final String content;
  final String timeAgo;
  final String imageUrl;

  UserNotification({
    required this.username,
    required this.content,
    required this.timeAgo,
    required this.imageUrl,
  });
}
