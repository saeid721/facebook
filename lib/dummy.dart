// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(FacebookCloneApp());
// }
//
// class FacebookCloneApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: FacebookHomePage(),
//     );
//   }
// }
//
// class FacebookHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: Text(
//           'facebook',
//           style: TextStyle(
//             color: Colors.blue,
//             fontWeight: FontWeight.bold,
//             fontSize: 28,
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search, color: Colors.black),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: Icon(Icons.message, color: Colors.black),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Post creation section
//             Container(
//               padding: EdgeInsets.all(10),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       CircleAvatar(
//                         radius: 25,
//                         backgroundImage: NetworkImage(
//                           'https://via.placeholder.com/150',
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Expanded(
//                         child: TextField(
//                           decoration: InputDecoration(
//                             hintText: "What's on your mind?",
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(25),
//                               borderSide: BorderSide.none,
//                             ),
//                             filled: true,
//                             fillColor: Colors.grey[200],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 10),
//                   Divider(thickness: 1),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       _postOptionButton(Icons.videocam, "Live", Colors.red),
//                       _postOptionButton(Icons.photo_library, "Photo", Colors.green),
//                       _postOptionButton(Icons.location_on, "Check In", Colors.red),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Divider(thickness: 8, color: Colors.grey[300]),
//
//             // Stories section
//             Container(
//               height: 200,
//               padding: EdgeInsets.symmetric(vertical: 10),
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 6,
//                 itemBuilder: (context, index) {
//                   return _buildStoryItem();
//                 },
//               ),
//             ),
//
//             Divider(thickness: 8, color: Colors.grey[300]),
//
//             // Friend suggestions section
//             Container(
//               padding: EdgeInsets.all(10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'People You May Know',
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 10),
//                   _friendSuggestionItem(),
//                 ],
//               ),
//             ),
//
//             Divider(thickness: 8, color: Colors.grey[300]),
//
//             // Posts feed
//             ListView.builder(
//               physics: NeverScrollableScrollPhysics(),
//               shrinkWrap: true,
//               itemCount: 3,
//               itemBuilder: (context, index) {
//                 return PostItem();
//               },
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: 0,
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.grey,
//         type: BottomNavigationBarType.fixed,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.people),
//             label: 'Friends',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.ondemand_video),
//             label: 'Watch',
//           ),
//           BottomNavigationBarItem(
//             icon: Stack(
//               children: [
//                 Icon(Icons.notifications),
//                 Positioned(
//                   right: 0,
//                   child: Container(
//                     padding: EdgeInsets.all(2),
//                     decoration: BoxDecoration(
//                       color: Colors.red,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Text(
//                       '3',
//                       style: TextStyle(color: Colors.white, fontSize: 12),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             label: 'Notifications',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu),
//             label: 'Menu',
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _postOptionButton(IconData icon, String text, Color color) {
//     return FlatButton.icon(
//       onPressed: () {},
//       icon: Icon(icon, color: color),
//       label: Text(text),
//     );
//   }
//
//   Widget _buildStoryItem() {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 5),
//       width: 110,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         image: DecorationImage(
//           image: NetworkImage('https://via.placeholder.com/100x150'),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           CircleAvatar(
//             backgroundImage: NetworkImage('https://via.placeholder.com/50'),
//             radius: 20,
//           ),
//           SizedBox(height: 5),
//           Container(
//             color: Colors.black54,
//             padding: EdgeInsets.all(2),
//             child: Text(
//               'User Name',
//               style: TextStyle(color: Colors.white, fontSize: 12),
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),
//           SizedBox(height: 5),
//         ],
//       ),
//     );
//   }
//
//   Widget _friendSuggestionItem() {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 5),
//       padding: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.white,
//       ),
//       child: Row(
//         children: [
//           CircleAvatar(
//             radius: 30,
//             backgroundImage: NetworkImage('https://via.placeholder.com/150'),
//           ),
//           SizedBox(width: 10),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Friend Name',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               Text('3 mutual friends'),
//               Row(
//                 children: [
//                   FlatButton(
//                     color: Colors.blue,
//                     textColor: Colors.white,
//                     onPressed: () {},
//                     child: Text('Add Friend'),
//                   ),
//                   SizedBox(width: 5),
//                   FlatButton(
//                     color: Colors.grey[300],
//                     textColor: Colors.black,
//                     onPressed: () {},
//                     child: Text('Remove'),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// // Post item widget
// class PostItem extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//       child: Padding(
//         padding: EdgeInsets.all(10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 CircleAvatar(
//                   backgroundImage: NetworkImage(
//                       'https://via.placeholder.com/150'), // User profile image
//                 ),
//                 SizedBox(width: 10),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('User Name', style: TextStyle(fontWeight: FontWeight.bold)),
//                     Text('5 mins ago', style: TextStyle(color: Colors.grey)),
//                   ],
//                 ),
//                 Spacer(),
//                 Icon(Icons.more_horiz),
//               ],
//             ),
//             SizedBox(height: 10),
//             Text("This is an example post content for the Facebook UI clone."),
//             SizedBox(height: 10),
//             Image.network(
//               'https://via.placeholder.com/300x200', // Post image
//               fit: BoxFit.cover,
//             ),
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     Icon(Icons.thumb_up_alt_outlined),
//                     SizedBox(width: 5),
//                     Text("Like"),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Icon(Icons.comment_outlined),
//                     SizedBox(width: 5),
//                     Text("Comment"),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Icon(Icons.share_outlined),
//                     SizedBox(width: 5),
//                     Text("Share"),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(FacebookCloneApp());
// }
//
// class FacebookCloneApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: FacebookHomePage(),
//     );
//   }
// }
//
// class FacebookHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: Text(
//           'facebook',
//           style: TextStyle(
//             color: Colors.blue,
//             fontWeight: FontWeight.bold,
//             fontSize: 28,
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search, color: Colors.black),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: Icon(Icons.message, color: Colors.black),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Post creation section
//             Container(
//               padding: EdgeInsets.all(10),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       CircleAvatar(
//                         radius: 25,
//                         backgroundImage: NetworkImage(
//                           'https://via.placeholder.com/150',
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Expanded(
//                         child: TextField(
//                           decoration: InputDecoration(
//                             hintText: "What's on your mind?",
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(25),
//                               borderSide: BorderSide.none,
//                             ),
//                             filled: true,
//                             fillColor: Colors.grey[200],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 10),
//                   Divider(thickness: 1),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       _postOptionButton(Icons.videocam, "Live", Colors.red),
//                       _postOptionButton(Icons.photo_library, "Photo", Colors.green),
//                       _postOptionButton(Icons.location_on, "Check In", Colors.red),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Divider(thickness: 8, color: Colors.grey[300]),
//
//             // Stories section
//             Container(
//               height: 200,
//               padding: EdgeInsets.symmetric(vertical: 10),
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 6,
//                 itemBuilder: (context, index) {
//                   return _buildStoryItem();
//                 },
//               ),
//             ),
//
//             Divider(thickness: 8, color: Colors.grey[300]),
//
//             // Friend suggestions section
//             Container(
//               padding: EdgeInsets.all(10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'People You May Know',
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 10),
//                   _friendSuggestionItem(),
//                 ],
//               ),
//             ),
//
//             Divider(thickness: 8, color: Colors.grey[300]),
//
//             // Posts feed
//             ListView.builder(
//               physics: NeverScrollableScrollPhysics(),
//               shrinkWrap: true,
//               itemCount: 3,
//               itemBuilder: (context, index) {
//                 return PostItem();
//               },
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: 0,
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.grey,
//         type: BottomNavigationBarType.fixed,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.people),
//             label: 'Friends',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.ondemand_video),
//             label: 'Watch',
//           ),
//           BottomNavigationBarItem(
//             icon: Stack(
//               children: [
//                 Icon(Icons.notifications),
//                 Positioned(
//                   right: 0,
//                   child: Container(
//                     padding: EdgeInsets.all(2),
//                     decoration: BoxDecoration(
//                       color: Colors.red,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Text(
//                       '3',
//                       style: TextStyle(color: Colors.white, fontSize: 12),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             label: 'Notifications',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu),
//             label: 'Menu',
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _postOptionButton(IconData icon, String text, Color color) {
//     return FlatButton.icon(
//       onPressed: () {},
//       icon: Icon(icon, color: color),
//       label: Text(text),
//     );
//   }
//
//   Widget _buildStoryItem() {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 5),
//       width: 110,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         image: DecorationImage(
//           image: NetworkImage('https://via.placeholder.com/100x150'),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           CircleAvatar(
//             backgroundImage: NetworkImage('https://via.placeholder.com/50'),
//             radius: 20,
//           ),
//           SizedBox(height: 5),
//           Container(
//             color: Colors.black54,
//             padding: EdgeInsets.all(2),
//             child: Text(
//               'User Name',
//               style: TextStyle(color: Colors.white, fontSize: 12),
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),
//           SizedBox(height: 5),
//         ],
//       ),
//     );
//   }
//
//   Widget _friendSuggestionItem() {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 5),
//       padding: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.white,
//       ),
//       child: Row(
//         children: [
//           CircleAvatar(
//             radius: 30,
//             backgroundImage: NetworkImage('https://via.placeholder.com/150'),
//           ),
//           SizedBox(width: 10),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Friend Name',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               Text('3 mutual friends'),
//               Row(
//                 children: [
//                   FlatButton(
//                     color: Colors.blue,
//                     textColor: Colors.white,
//                     onPressed: () {},
//                     child: Text('Add Friend'),
//                   ),
//                   SizedBox(width: 5),
//                   FlatButton(
//                     color: Colors.grey[300],
//                     textColor: Colors.black,
//                     onPressed: () {},
//                     child: Text('Remove'),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// // Post item widget
// class PostItem extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//       child: Padding(
//         padding: EdgeInsets.all(10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 CircleAvatar(
//                   backgroundImage: NetworkImage(
//                       'https://via.placeholder.com/150'), // User profile image
//                 ),
//                 SizedBox(width: 10),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('User Name', style: TextStyle(fontWeight: FontWeight.bold)),
//                     Text('5 mins ago', style: TextStyle(color: Colors.grey)),
//                   ],
//                 ),
//                 Spacer(),
//                 Icon(Icons.more_horiz),
//               ],
//             ),
//             SizedBox(height: 10),
//             Text("This is an example post content for the Facebook UI clone."),
//             SizedBox(height: 10),
//             Image.network(
//               'https://via.placeholder.com/300x200', // Post image
//               fit: BoxFit.cover,
//             ),
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     Icon(Icons.thumb_up_alt_outlined),
//                     SizedBox(width: 5),
//                     Text("Like"),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Icon(Icons.comment_outlined),
//                     SizedBox(width: 5),
//                     Text("Comment"),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Icon(Icons.share_outlined),
//                     SizedBox(width: 5),
//                     Text("Share"),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
