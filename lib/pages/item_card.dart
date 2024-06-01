import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemCard extends StatelessWidget{
  String name;
  String institucion;
  VoidCallback funciondel;
  VoidCallback funcionedit;

ItemCard({required this.name, required this.institucion, required this.funciondel, required this.funcionedit});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      leading: Icon(Icons.person),
      title: Text(name),
      subtitle:  Text(institucion),
      trailing:
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
             IconButton(
            icon: Icon(Icons.edit),
            onPressed: funcionedit,
               ),
            IconButton(
            icon: Icon(Icons.delete),
            onPressed: funciondel,
               ),
          ],
        ),
        );
  }
}