import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Walter Moncada'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('WM'),
            ),
          )
        ],
      ),
      body: Center(
         child: CircleAvatar(
          maxRadius: 200,
          backgroundImage: NetworkImage('https://media.elcomercio.com/wp-content/uploads/2026/05/b492741ce17a0ba0353092b43d91abb6-1024x683.jpg'),
         ),
      ),
    );
  }
}