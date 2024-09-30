import 'package:flutter/material.dart';
import '../widgets/friend_suggestion_widget.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        FriendSuggestionWidget(name: "John Doe"),
        FriendSuggestionWidget(name: "Jane Smith"),
        FriendSuggestionWidget(name: "Alice Johnson"),
      ],
    );
  }
}
