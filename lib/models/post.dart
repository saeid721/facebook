class Post {
  final String username;
  final String content;
  final String timeAgo;
  final String? imageUrl; // Optional image URL

  Post({
    required this.username,
    required this.content,
    required this.timeAgo,
    this.imageUrl, // Initialize as null if not provided
  });
}
