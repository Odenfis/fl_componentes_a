import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({super.key});

  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(
      barrierDismissible: true,
      context: context, 
      builder:(context) => CupertinoAlertDialog(        
        title: Text('Alerta de Proceso'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Esto es el contenido de la alerta que estamos testeando'),
            SizedBox(height: 10),
            FlutterLogo(size: 100) 
          ],          
        ),
        actions: [
          TextButton(
            onPressed:() => Navigator.pop(context), 
            child: Text('Cancelar', style: TextStyle(fontSize: 15)))
        ],
      ),
    );
  }

  void displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: true,
      context: context, 
      builder:(context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(40)),
        title: Text('Alerta de Proceso'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Esto es el contenido de la alerta que estamos testeando'),
            SizedBox(height: 10),
            FlutterLogo(size: 100) 
          ],          
        ),
        actions: [
          TextButton(
            onPressed:() => Navigator.pop(context), 
            child: Text('Cancelar', style: TextStyle(fontSize: 15)))
        ],
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: Center(
         child: ElevatedButton(
          onPressed:() => Platform.isAndroid
                          ? displayDialogAndroid(context)
                          : displayDialogIOS(context), 
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Text('Procesar', style: TextStyle(color: Colors.white, fontSize: 20)),
          )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.cloud_circle, color: Colors.white)),
    );
  }
}