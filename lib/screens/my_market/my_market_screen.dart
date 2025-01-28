import 'package:flutter/material.dart';
import 'package:market_ui_clone/models/icon_menu.dart';
import 'package:market_ui_clone/screens/my_market/components/card_icon_menu.dart';
import 'package:market_ui_clone/screens/my_market/components/my_market_header.dart';

class MyMarketScreen extends StatelessWidget {
  const MyMarketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("내 마켓"),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
        ),
      ),
      body: ListView(
        children: [
          MyMarketHeader(),
          SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu1),
          SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu2),
          SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu3),
        ],
      ),
    );
  }
}
