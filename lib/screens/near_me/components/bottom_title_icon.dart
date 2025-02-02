import 'package:flutter/material.dart';

class BottomTitleIcon extends StatelessWidget {
  final IconData iconData;
  final String title;

  const BottomTitleIcon(
      {super.key, required this.title, required this.iconData});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: 80,
      child: Column(
        children: [
          Icon(iconData, size: 30),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(title,
                style: TextStyle(fontSize: 14, color: Colors.black)),
          )
        ],
      ),
    );
  }
}
