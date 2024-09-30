import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/navigation_controller.dart';
import 'pages/home_page.dart';
import 'pages/friends_page.dart';
import 'pages/notifications_page.dart';
import 'pages/profile_page.dart';
import 'widgets/colors.dart';

void main() {
  runApp(const FacebookCloneApp());
}

class FacebookCloneApp extends StatelessWidget {
  const FacebookCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: FacebookHomePage(),
    );
  }
}

class FacebookHomePage extends StatelessWidget {
  FacebookHomePage({super.key});

  final NavigationController navigationController = Get.put(NavigationController());

  final List<Widget> pages = [
    HomePage(),
    const FriendsPage(),
    NotificationsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(85), // Adjust height as needed
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey, // Change to your desired border color
                  width: 0.5, // Adjust the border thickness
                ),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0), // Adjust padding as needed
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          'facebook',
                          style: TextStyle(
                            color: ColorRes.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            //fontFamily: 'klavika',
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.black,
                                ),
                              child: const Icon(Icons.add, color: Colors.white)
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.search, color: Colors.black),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.message, color: Colors.black),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Row for navigation icons
                GetBuilder<NavigationController>(
                  builder: (controller) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          icon: Icon(Icons.home,
                              color: controller.currentIndex.value == 0
                                  ? ColorRes.primaryColor
                                  : Colors.black),
                          onPressed: () {
                            controller.changePage(0);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.people,
                              color: controller.currentIndex.value == 1
                                  ? ColorRes.primaryColor
                                  : Colors.black),
                          onPressed: () {
                            controller.changePage(1);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.notifications_none_outlined,
                              color: controller.currentIndex.value == 2
                                  ? ColorRes.primaryColor
                                  : Colors.black),
                          onPressed: () {
                            controller.changePage(2);
                          },
                        ),

                        const CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/images/profile_pic.jpg'), // Replace with your image
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: GetBuilder<NavigationController>(
        builder: (controller) {
          return pages[controller.currentIndex.value];
        },
      ),
    );
  }
}
