import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
body: Center(
  child: Padding(
    padding: const EdgeInsets.all(12.0),
    child: SlideAction(
      elevation: 0,
      borderRadius: 12,
      innerColor: Colors.deepPurple,
      outerColor: Colors.deepPurple[200],
      sliderButtonIcon: Icon(Icons.lock, color: Colors.white),
      text: 'Slide to unlock',
      textStyle: TextStyle(color: Colors.white, fontSize: 20),
      sliderRotate: false,
      onSubmit: (){},

    ),
  ),
),

    );  
    }
}