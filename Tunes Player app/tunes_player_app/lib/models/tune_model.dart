import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel 
{
  final Color color;
  final String soundFile;

  const TuneModel({required this.color, required this.soundFile});

  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(soundFile));
  }
}