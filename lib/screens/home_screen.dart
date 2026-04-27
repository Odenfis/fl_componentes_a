
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes de Flutter', style: TextStyle(color: Colors.white)),
        elevation: 1,
        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView.separated(
        itemBuilder:(context, index) => ListTile(
          leading: Icon(Icons.settings_input_hdmi),
          title: Text('Items de Prueba'),
          trailing: Icon(Icons.arrow_circle_right),
          onTap: () {
            //final route = MaterialPageRoute(builder:(context) => AlertScreen());
            //Navigator.push(context, route);
            Navigator.pushNamed(context, 'bartsimpson');
          },
        ), 
        separatorBuilder:(context, index) => Divider(), 
        itemCount: 10)
    );
  }
}