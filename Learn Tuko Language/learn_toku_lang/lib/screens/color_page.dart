import 'package:flutter/material.dart';
import 'package:learn_toku_lang/components/list_item.dart';
import 'package:learn_toku_lang/models/item.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});

  final List<ItemModel> colors = const [
    ItemModel(
      image: 'assets/images/colors/color_black.png',
      jpName: 'Burakku',
      enName: 'Black',
      sound: 'sounds/colors/black.wav'
    ),
    ItemModel(
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'Brown',
      sound: 'sounds/colors/brown.wav'
    ),
    ItemModel(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Hokorippoi kiiro',
      enName: 'Dusty Yellow',
      sound: 'sounds/colors/dusty yellow.wav'
    ),
    ItemModel(
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gurē',
      enName: 'Gray',
      sound: 'sounds/colors/gray.wav'
    ),
    ItemModel(
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'Green',
      sound: 'sounds/colors/green.wav'
    ),
    ItemModel(
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'Red',
      sound: 'sounds/colors/red.wav'
    ),
    ItemModel(
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiroi',
      enName: 'White',
      sound: 'sounds/colors/white.wav'
    ),
    ItemModel(
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro',
      enName: 'Yellow',
      sound: 'sounds/colors/yellow.wav'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF46322B),
        foregroundColor: Colors.white,
        title: Text(
          'Colors',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index){
          return ListItem(
            color: const Color(0xff79359f),
            item: colors[index]);
        },
      )
    );
  }
}

