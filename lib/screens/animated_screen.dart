import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.brown;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  //creamos metodo 100% real no fake
  void changeShape(){
    /*
    _width += 30;
    _height += 30;
    _color = Colors.deepOrange;
    _borderRadius = BorderRadius.circular(30);*/
    final rndm = Random();
    _width = rndm.nextInt(300).toDouble() + 70;
    _height = rndm.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
              rndm.nextInt(255),
              rndm.nextInt(255),
              rndm.nextInt(255),
              1);
    _borderRadius = BorderRadius.circular(rndm.nextInt(100).toDouble() + 10);
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contenedor Animado'),
      ),
      body: Center(
         child: AnimatedContainer(
            duration: Duration(milliseconds: 400),
            curve: Curves.easeIn,
            width: _width,
            height: _height,
            //color: Colors.red,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius
            ),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() => changeShape(),
        child: Icon(Icons.change_circle, color: Colors.white),
      ),
    );
  }
}