import 'package:flutter/material.dart';
import 'package:learn_toku_lang/models/item.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.itemModel});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      itemModel.jpName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      ),
                    Text(
                      itemModel.enName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      ),
                  ],
                ),
              ),
        ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                onPressed: (){
                  itemModel.playSound();
                },
                icon : const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            )
      ],
    );
  }
}