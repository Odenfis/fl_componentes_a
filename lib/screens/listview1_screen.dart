import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final options = const ['Korn','Slipknot','Mudvayne','System of A Down','Limp Bizkit'];
   
  const ListView1Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Parte 1'),
      ),
      body: ListView(
        children: [
          ...options.map((e) => ListTile(
              leading: Icon(Icons.music_note),
              title: Text(e),
              trailing: Icon(Icons.check_rounded),
          )
          )
        ],
      )
    );
  }
}