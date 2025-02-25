import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_ui_clone/models/product.dart';
import 'package:market_ui_clone/screens/home/components/product_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text("삼성동"),
            const SizedBox(width: 4.0),
            const Icon(CupertinoIcons.chevron_down, size: 15.0),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(CupertinoIcons.list_dash),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(CupertinoIcons.bell),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey[300],
          ),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(
            height: 0.0, indent: 16, endIndent: 16, color: Colors.grey),
        itemBuilder: (context, index) =>
            ProductItem(product: productList[index]),
        itemCount: productList.length,
      ),
    );
  }
}
