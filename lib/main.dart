import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() {
  runApp(MyApp());

}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();


}

class _MyAppState extends State<MyApp> {

  _MyAppState()
  {

  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Column(
            children: [
              getCustomBtn(Colors.red, "note1.wav"),
              getCustomBtn(Colors.orange, "note2.wav"),
              getCustomBtn(Colors.yellow, "note3.wav"),
              getCustomBtn(Colors.green, "note4.wav"),
              getCustomBtn(Colors.teal, "note5.wav"),
              getCustomBtn(Colors.blue, "note6.wav"),
              getCustomBtn(Colors.purple, "note7.wav"),




            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
          ),
        ),
        ),

      debugShowCheckedModeBanner: false,
    );
  }
}
 getCustomBtn(Color colors,var filename)
{
  return Expanded(
    child: FlatButton(onPressed: (){
      final audio=AudioCache();
      audio.clearCache();
      audio.play(filename);
    }, child: null,
    color: colors,
    ),
    flex: 1,
  );
}


