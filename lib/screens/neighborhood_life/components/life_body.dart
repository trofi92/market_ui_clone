import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:market_ui_clone/models/neighborhood_life.dart';
import 'package:market_ui_clone/screens/components/image_container.dart';
import 'package:market_ui_clone/theme.dart';

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
          _buildTop(neighborhoodLife),
          _buildWriter(neighborhoodLife),
          _buildWriting(neighborhoodLife),
          _buildImage(neighborhoodLife),
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

Padding _buildTop(NeighborhoodLife neighborhoodLife) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(4)),
            color: Color.fromRGBO(247, 247, 247, 1),
          ),
          child: Text(neighborhoodLife.category, style: textTheme().bodyMedium),
        ),
        Text(neighborhoodLife.date, style: textTheme().bodyMedium),
      ],
    ),
  );
}

Padding _buildWriter(NeighborhoodLife neighborhoodLife) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
      children: [
        ImageContainer(
          width: 30,
          height: 30,
          borderRadius: 15,
          imageUrl: neighborhoodLife.profileImageUrl,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: ' ${neighborhoodLife.username}',
                  style: textTheme().bodyMedium),
              TextSpan(text: ' ${neighborhoodLife.location}'),
              TextSpan(text: ' 인증 ${neighborhoodLife.authCount}회'),
            ],
          ),
        ),
      ],
    ),
  );
}

Padding _buildWriting(NeighborhoodLife neighborhoodLife) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(
        neighborhoodLife.content,
        style: textTheme().bodyLarge,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.start,
      ),
    ),
  );
}

Visibility _buildImage(NeighborhoodLife neighborhoodLife) {
  return Visibility(
    visible: neighborhoodLife.contentImageUrl.isNotEmpty,
    child: Padding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Image.network(
        neighborhoodLife.contentImageUrl,
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    ),
  );
}

Padding _buildTail(int commentCount) {
  return Padding(
    padding: EdgeInsets.all(16),
    child: Row(
      children: [
        Icon(FontAwesomeIcons.faceSmile, size: 22, color: Colors.grey),
        SizedBox(width: 8),
        Text('공감하기', style: TextStyle(fontSize: 16, color: Colors.black)),
        SizedBox(width: 22),
        Icon(FontAwesomeIcons.message, size: 22, color: Colors.grey),
        SizedBox(width: 8),
        Text('댓글쓰기 $commentCount',
            style: TextStyle(fontSize: 16, color: Colors.black)),
      ],
    ),
  );
}
