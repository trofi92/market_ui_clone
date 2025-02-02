import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:market_ui_clone/models/recommened_store.dart';
import 'package:market_ui_clone/screens/components/appbar_prefreed_size.dart';
import 'package:market_ui_clone/screens/near_me/components/bottom_title_icon.dart';
import 'package:market_ui_clone/screens/near_me/components/round_border_text.dart';
import 'package:market_ui_clone/screens/near_me/components/search_text_field.dart';
import 'package:market_ui_clone/screens/near_me/components/store_item.dart';
import 'package:market_ui_clone/theme.dart';

class NearMeScreen extends StatelessWidget {
  const NearMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("내 근처"),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.pencil),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(CupertinoIcons.bell),
            onPressed: () {},
          ),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SearchTextField(),
          ),
          SizedBox(
            height: 66,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: searchKeyword.length,
              itemBuilder: (context, index) {
                return Center(
                    child: RoundBorderText(
                        title: searchKeyword[index], position: index));
              },
            ),
          ),
          Divider(
            color: Colors.grey[100],
            thickness: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 30),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 18,
              runSpacing: 30,
              children: [
                BottomTitleIcon(title: "구인구직", iconData: FontAwesomeIcons.user),
                BottomTitleIcon(
                    title: "과외 클래스", iconData: FontAwesomeIcons.penToSquare),
                BottomTitleIcon(
                    title: "농수산물", iconData: FontAwesomeIcons.appleWhole),
                BottomTitleIcon(title: "부동산", iconData: FontAwesomeIcons.hotel),
                BottomTitleIcon(title: "중고차", iconData: FontAwesomeIcons.car),
                BottomTitleIcon(
                    title: "전시/행사", iconData: FontAwesomeIcons.chessBishop),
              ],
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text('이웃들의 추천 가게', style: textTheme().headlineMedium),
          ),
          SizedBox(height: 20),
          // ignore: sized_box_for_whitespace
          Container(
            height: 288,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recommendStoreList.length,
              itemBuilder: (context, index) {
                return StoreItem(recommendStore: recommendStoreList[index]);
              },
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
