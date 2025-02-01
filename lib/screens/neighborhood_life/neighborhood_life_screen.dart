import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_ui_clone/models/neighborhood_life.dart';
import 'package:market_ui_clone/screens/components/appbar_prefreed_size.dart';
import 'package:market_ui_clone/screens/neighborhood_life/components/life_body.dart';
import 'package:market_ui_clone/screens/neighborhood_life/components/life_header.dart';

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
            LifeHeader(),
            ...List.generate(
              neighborhoodLifeList.length,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: LifeBody(neighborhoodLife: neighborhoodLifeList[index]),
              ),
            ),
          ],
        ));
  }
}
