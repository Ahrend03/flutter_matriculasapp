import 'package:flutter/material.dart';

class AlumnoCard extends StatelessWidget{
  String name;
  String institucion;

AlumnoCard({required this.name, required this.institucion});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(leading: Icon(Icons.person),
          title: Text(name),
          subtitle:  Text(institucion),
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
        );
  }
}