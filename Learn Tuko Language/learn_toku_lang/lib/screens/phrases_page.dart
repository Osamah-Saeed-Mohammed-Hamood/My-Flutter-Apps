import 'package:flutter/material.dart';
import 'package:learn_toku_lang/components/phrase_item.dart';
import 'package:learn_toku_lang/models/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> phrasesLest = const [
    ItemModel(
      jpName: 'Kimasu ka',
      enName: 'Are you coming?',
      sound: 'sounds/phrases/are_you_coming.wav'
    ),
    ItemModel(
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      enName: 'Do not forget to subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav'
    ),
    ItemModel(
      jpName: 'Gokibun wa ikaga desu ka',
      enName: 'How are you feeling?',
      sound: 'sounds/phrases/how_are_you_feeling.wav'
    ),
    ItemModel(
      jpName: 'Watashi wa anime ga daisuki desu',
      enName: 'I love anime',
      sound: 'sounds/phrases/i_love_anime.wav'
    ),
    ItemModel(
      jpName: 'Watashi wa puroguramingu ga daisuki desu',
      enName: 'I love programming',
      sound: 'sounds/phrases/i_love_programming.wav'
    ),
    ItemModel(
      jpName: 'Puroguramingu wa kantan desu',
      enName: 'Programming is easy',
      sound: 'sounds/phrases/programming_is_easy.wav'
    ),
    ItemModel(
      jpName: 'Namae wa nan desu ka',
      enName: 'What is your name?',
      sound: 'sounds/phrases/what_is_your_name.wav'
    ),
    ItemModel(
      jpName: 'Doko ni iku no',
      enName: 'Where are you going?',
      sound: 'sounds/phrases/where_are_you_going.wav'
    ),
    ItemModel(
      jpName: 'Hai, watashi kite imasu',
      enName: 'Yes, I am coming',
      sound: 'sounds/phrases/yes_im_coming.wav'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF46322B),
        foregroundColor: Colors.white,
        title: Text(
          'Phrases',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrasesLest.length,
        itemBuilder: (context, index){
          return PhrasesItem(
            color: const Color(0xff50adc7),
            item: phrasesLest[index]);
        },
      )
    );
  }
}

