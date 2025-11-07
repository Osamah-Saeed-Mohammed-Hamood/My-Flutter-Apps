import 'package:flutter/material.dart';
import 'package:learn_toku_lang/components/list_item.dart';
import 'package:learn_toku_lang/models/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'Ichi',
      enName: 'One',
      sound: 'sounds/numbers/number_one_sound.mp3'
    ),
    ItemModel(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      enName: 'Two',
      sound: 'sounds/numbers/number_two_sound.mp3'
    ),
    ItemModel(
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      enName: 'Three',
      sound: 'sounds/numbers/number_three_sound.mp3'
    ),
    ItemModel(
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
      enName: 'Four',
      sound: 'sounds/numbers/number_four_sound.mp3'
    ),
    ItemModel(
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      enName: 'Five',
      sound: 'sounds/numbers/number_five_sound.mp3'
    ),
    ItemModel(
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      enName: 'Six',
      sound: 'sounds/numbers/number_six_sound.mp3'
    ),
    ItemModel(
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Shichi',
      enName: 'Seven',
      sound: 'sounds/numbers/number_seven_sound.mp3'
    ),
    ItemModel(
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'Hachi',
      enName: 'Eight',
      sound: 'sounds/numbers/number_eight_sound.mp3'
    ),
    ItemModel(
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyū',
      enName: 'Nine',
      sound: 'sounds/numbers/number_nine_sound.mp3'
    ),
    ItemModel(
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'Jū',
      enName: 'Ten',
      sound: 'sounds/numbers/number_ten_sound.mp3'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF46322B),
        foregroundColor: Colors.white,
        title: Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index){
          return ListItem(
            color:  const Color(0xffef9235),
            item: numbers[index]);
        },
      )
    );
  }
}

