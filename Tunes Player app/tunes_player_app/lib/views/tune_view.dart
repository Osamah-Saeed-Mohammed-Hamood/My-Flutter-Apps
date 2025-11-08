import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/tune_model.dart';
import 'package:tunes_player_app/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  final List<TuneModel> tunes = const [
      TuneModel(color: Color(0xfff44336), soundFile: 'note1.wav'),
      TuneModel(color: Color(0xfff89800), soundFile: 'note2.wav'),
      TuneModel(color: Color(0xfffeeb3b), soundFile: 'note3.wav'),
      TuneModel(color: Color(0xff4caf50), soundFile: 'note4.wav'),
      TuneModel(color: Color(0xff2f9688), soundFile: 'note5.wav'),
      TuneModel(color: Color(0xff2896f3), soundFile: 'note6.wav'),
      TuneModel(color: Color(0xff9c27b0), soundFile: 'note7.wav'),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Flutter Tune',
          style: TextStyle(
            color: Colors.white,
            ),
          ),
        backgroundColor: const Color(0xff253238),
        elevation: 0,
      ),
      body: Column(
        children:
          //...getTuneItems(),
          tunes.map(
            (e)=>TuneItem(tune: e),
          ).toList(),
      ),
    );
  }

  // List<TuneItem> getTuneItems() {
  //   List<TuneItem> items = [];
  //   for (var color in tuneColors) {
  //     items.add(TuneItem(color: color));
  //   }
  //   return items;
  // }
}