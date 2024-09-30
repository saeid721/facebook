import 'package:flutter/material.dart';

class FriendSuggestionWidget extends StatelessWidget {
  final String name;

  const FriendSuggestionWidget({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Icon(Icons.person)),
      title: Text(name),
      trailing: ElevatedButton(
        onPressed: () {},
        child: Text('Add Friend'),
      ),
    );
  }
}
