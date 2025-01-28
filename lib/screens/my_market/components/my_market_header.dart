import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:market_ui_clone/theme.dart';

class MyMarketHeader extends StatelessWidget {
  const MyMarketHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: Column(
          children: [
            _buildProdfileRow(),
            SizedBox(height: 30.0),
            _buildProdfileButton(),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildRoundTextButton('판매내역', FontAwesomeIcons.receipt),
                _buildRoundTextButton('구매내역', FontAwesomeIcons.bagShopping),
                _buildRoundTextButton('관심목록', FontAwesomeIcons.heart),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildProdfileRow() {
  return Row(
    children: [
      Stack(
        children: [
          SizedBox(
              width: 65,
              height: 65,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(32.5),
                  child: Image.network(
                      'https://avatars.githubusercontent.com/u/84131398?v=4',
                      fit: BoxFit.cover))),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Icons.camera_alt_outlined,
                size: 15,
              ),
            ),
          ),
        ],
      ),
      SizedBox(width: 16),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Dev', style: textTheme().titleMedium),
          SizedBox(height: 10),
          Text('삼성동 #00912')
        ],
      ),
    ],
  );
}

Widget _buildProdfileButton() {
  //GestureDetector와 비슷하지만, InkWell은 Material Design의 물결효과 제공
  return InkWell(
    onTap: () {},
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffd4d5dd), width: 1.0),
        borderRadius: BorderRadius.circular(6.0),
      ),
      height: 45,
      child: Center(
        child: Text(
          '프로필 보기',
          style: textTheme().titleMedium,
        ),
      ),
    ),
  );
}

Widget _buildRoundTextButton(String title, IconData iconData) {
  return Column(
    children: [
      Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 226, 208, 1),
          border: Border.all(color: Color(0xffd4d5dd), width: 0.5),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(iconData, color: Colors.orange),
      ),
      SizedBox(height: 10),
      Text(title, style: textTheme().titleMedium),
    ],
  );
}
