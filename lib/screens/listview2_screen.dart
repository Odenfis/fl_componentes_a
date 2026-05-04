
import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  
  final options = const ['Korn','Slipknot','Mudvayne','System of A Down','Limp Bizkit','Britney Spears'];

  const ListView2Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.indigoAccent,
        title: Text('List View Separated Parte 1'),
      ),
      body: ListView.separated(
        itemBuilder:(context, index) => ListTile(
          title: Text(options[index]),
          leading: Icon(Icons.music_note),
          trailing: Icon(Icons.play_arrow),
          onTap: () {
            final opciones = options[index];
            print(opciones);
          },
        ), 
        separatorBuilder:(context, index) => Divider(), 
        itemCount: options.length)
    );
  }
}