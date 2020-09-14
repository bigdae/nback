import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:english_words/english_words.dart';
import 'dart:math';

class Nback {

  var list = [];
  var result = [];
  var number = 0;
  var backCount = 2;

  void setNumber(number){
    this.number = number;
  }

  getNumber(){
    return this.number;
  }

  void makeList(int number){
    var rng = new Random();
    setNumber(number);
    for(var i=0; i<this.getNumber(); i++) {
      list.add(rng.nextInt(4)+1);
    }
  }

  getList(){
    return this.list;
  }

  getOXValue(){
    for(var i=0; i<getNumber(); i++) {
      if ( i < backCount) {
        result.add("_");
      } else {
        if ( this.getList()[i-backCount] == this.getList()[i]) {
          result.add("O");
        } else {
          result.add("X");
        }
      }
    }

    print(result);
  }

  AudioPlayer audioPlayer = AudioPlayer();


  void play_music() async {
    audioPlayer = await AudioCache().play("/assets/audios/1.mp3");
  }
}
