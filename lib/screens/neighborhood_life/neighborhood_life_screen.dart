import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_ui_clone/screens/components/appbar_prefreed_size.dart';

class NeighborhoodLifeScreen extends StatelessWidget {
  const NeighborhoodLifeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text("동네생활"),
          actions: [
            IconButton(
              icon: Icon(CupertinoIcons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(CupertinoIcons.plus_rectangle_on_rectangle),
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
            //LifeHeader(); // 작업예정
            // Padding(
            //   padding: const EdgeInsets.only(bottom: 12.0),
            //   child: LifeBody(neighborhoodLife: neighborhoodLifeList[0]),
            // ),
          ],
        ));
  }
}
