import 'package:airbnb_clone/view/explore_screen.dart';
import 'package:airbnb_clone/view/message.dart';
import 'package:airbnb_clone/view/profile_page.dart';
import 'package:airbnb_clone/view/wishlists.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  late final List<Widget> page;

  @override
  void initState() {
    page = [
      const ExploreScreen(),
      const WishListScreen(),
      const Scaffold(),
      const MessagesScreen(),
      const ProfilePage(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 5,
          iconSize: 32,
          selectedItemColor: Colors.pinkAccent,
          unselectedItemColor: Colors.black45,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Image.network(
                  "https://cdn3.iconfinder.com/data/icons/feather-5/24/search-512.png",
                  height: 30,
                  color:
                      selectedIndex == 0 ? Colors.pinkAccent : Colors.black45,
                ),
                label: 'Explore'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                  color:
                      selectedIndex == 1 ? Colors.pinkAccent : Colors.black45,
                ),
                label: "Wishlists"),
            BottomNavigationBarItem(
                icon: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/2111/2111307.png",
                  height: 30,
                  color:
                      selectedIndex == 2 ? Colors.pinkAccent : Colors.black45,
                ),
                label: "Trip"),
            BottomNavigationBarItem(
                icon: Image.network(
                  "https://static.vecteezy.com/system/resources/thumbnails/014/441/006/small_2x/chat-message-thin-line-icon-social-icon-set-png.png",
                  height: 30,
                  color:
                      selectedIndex == 3 ? Colors.pinkAccent : Colors.black45,
                ),
                label: "Message"),
            BottomNavigationBarItem(
                icon: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/1144/1144760.png",
                  height: 30,
                  color:
                      selectedIndex == 4 ? Colors.pinkAccent : Colors.black45,
                ),
                label: "Profile")
          ]),
      body: page[selectedIndex],
    );
  }
}
