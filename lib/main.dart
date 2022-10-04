import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  List <Color> colors=[Colors.red,Colors.orange,Colors.yellow,Colors.green,Colors.teal,Colors.blue,Colors.purple];

  void playSound(int num)  {
    final player= AudioPlayer();
      player.setSource(AssetSource('note$num.wav'));
      player.play(AssetSource('note$num.wav'));


  }

  Expanded buildKey(Color color,int num){
   return  Expanded(
      child: Container(
        color:color,

        child: TextButton(
          onPressed: ()  {
            playSound(num);

          },
          child:Text(''),

        ),
      ),
    );

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.stretch,


            children:colors.map((color) =>buildKey(color, colors.indexOf(color)+1)).toList()

            /*
             buildKey(Colors.red,1),
              buildKey(Colors.orange,2),
              buildKey(Colors.yellow,3),
              buildKey(Colors.green,4),
              buildKey(Colors.teal,5),
              buildKey(Colors.blue,6),
              buildKey(Colors.purple,7),
              */


          ),

        ),
      ),
    );
  }
}