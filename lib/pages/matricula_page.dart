import 'package:flutter/material.dart';

class MatriculaPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Matricula"),
      ),
      body: Column(children: [
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Antonio Aguilar"),
          subtitle:  Text("Sociedad Agricola Drokasa"),
          trailing:
           GestureDetector(
            child: Icon(Icons.delete),
              onTap: (){
                print("Hola");
              },
              onDoubleTap: (){
                print("Doble Tap");
              },
            ),
        ),
      ],),
    );
  }
}