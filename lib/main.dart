import 'package:flutter/material.dart';
import 'package:market_ui_clone/theme.dart';
import 'package:market_ui_clone/screens/main_screens.dart';

void main() {
  runApp(const MarketUIClone());
}

class MarketUIClone extends StatelessWidget {
  const MarketUIClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Market UI Clone',
      debugShowCheckedModeBanner: false,
      theme: themeData(),
      home: MainScreens(),
    );
  }
}
