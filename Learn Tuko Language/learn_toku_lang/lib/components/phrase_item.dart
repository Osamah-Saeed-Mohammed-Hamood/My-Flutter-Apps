
import 'package:flutter/material.dart';
import 'package:learn_toku_lang/components/item_info.dart';
import 'package:learn_toku_lang/models/item.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: ItemInfo(itemModel: item)
    );
  }
}