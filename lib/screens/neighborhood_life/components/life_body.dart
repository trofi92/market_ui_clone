import 'package:flutter/material.dart';
import 'package:market_ui_clone/models/neighborhood_life.dart';

class LifeBody extends StatelessWidget {
  final NeighborhoodLife neighborhoodLife;

  const LifeBody({super.key, required this.neighborhoodLife});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Color(0xffd4d5dd),
            width: 0.5,
          ),
        ),
      ),
      child: Column(
        children: [
          _buildTop(),
          _buildWriter(),
          _buildWriting(),
          _buildImage(),
          Divider(
            thickness: 0.5,
            color: Colors.grey[100],
            height: 1.0,
          ),
          _buildTail(neighborhoodLife.commentCount),
        ],
      ),
    );
  }
}

Padding _buildTop() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
    child: Container(color: Colors.orange[100], height: 30),
  );
}

Padding _buildWriter() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Container(color: Colors.red[100], height: 30),
  );
}

Padding _buildWriting() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
    child: Container(color: Colors.blue[100], height: 50),
  );
}

_buildImage() {
  return Padding(
    padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
    child: Container(color: Colors.black, height: 150),
  );
}

Padding _buildTail(int commentCount) {
  return Padding(
    padding: EdgeInsets.all(16),
    child: Container(color: Colors.lime[100], height: 50),
  );
}
