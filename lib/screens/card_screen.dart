import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text('Card Widget'),
     ),
     body: ListView(
      children: [
        CustomCardType1(),
        SizedBox(height: 10),
        CustomCardType2(),
        SizedBox(height: 10),
        CustomCardType3(
          imageURL: 'https://panoramacultural.com.co/media/images/articulos/2022/05/07183244.jpg',
          descripcion: 'Goku Reinicia',
          ),
        SizedBox(height: 10),
        CustomCardType2(),
        SizedBox(height: 10),
        CustomCardType1(),
        SizedBox(height: 10),
        CustomCardType3(imageURL: 'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2025/06/goku-ultra-instinct-featured.jpg?w=1600&h=900&fit=crop'),
        SizedBox(height: 10),
        CustomCardType1(),
      ],
     ),
    );
  }
}

