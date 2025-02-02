import 'package:flutter/material.dart';
import 'package:market_ui_clone/models/recommened_store.dart';
import 'package:market_ui_clone/theme.dart';

class StoreItem extends StatelessWidget {
  final RecommendStore recommendStore;
  const StoreItem({super.key, required this.recommendStore});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(width: 0.3, color: Colors.grey),
      ),
      width: 289,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              bulidClipRRect(topLeft: 10, recommendStore: recommendStore),
              SizedBox(height: 2),
              bulidClipRRect(topLeft: 10, recommendStore: recommendStore),
            ],
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: '${recommendStore.storeName} ',
                            style: textTheme().headlineLarge),
                        TextSpan(text: '${recommendStore.location} '),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('${recommendStore.description} ',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme().titleMedium),
                  SizedBox(height: 8),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: '후기 ${recommendStore.commentCount}',
                            style: TextStyle(fontSize: 15, color: Colors.blue)),
                        TextSpan(
                            text: ' - 관심 ${recommendStore.likeCount}',
                            style: textTheme().titleMedium),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 8),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: '${recommendStore.commentUser} ',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: '${recommendStore.comment} ',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                )),
                          ],
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

ClipRRect bulidClipRRect(
    {double topLeft = 0, double topRight = 0, RecommendStore? recommendStore}) {
  return ClipRRect(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeft), topRight: Radius.circular(topRight)),
    child: Image.asset(recommendStore?.storeImages[0],
        width: 143, height: 100, fit: BoxFit.cover),
  );
}
