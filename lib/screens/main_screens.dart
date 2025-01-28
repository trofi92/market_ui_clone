import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_ui_clone/screens/chat/chat_screen.dart';
import 'package:market_ui_clone/screens/home/home_screen.dart';
import 'package:market_ui_clone/screens/my_market/my_market_screen.dart';
import 'package:market_ui_clone/screens/near_me/near_me_screen.dart';
import 'package:market_ui_clone/screens/neighborhood_life/neighborhood_life_screen.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          NeighborhoodLifeScreen(),
          NearMeScreen(),
          ChatScreen(),
          MyMarketScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "홈",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_on_square),
            label: "동네생활",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.placemark),
            label: "내 근처",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble),
            label: "채팅",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: "내 정보",
          ),
        ],
      ),
    );
  }
}
