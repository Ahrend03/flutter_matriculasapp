import 'package:flutter/material.dart';
import 'package:flutter_matriculasapp/models/carrera_model.dart';
import 'package:flutter_matriculasapp/models/matricula_model.dart';
import 'package:flutter_matriculasapp/pages/alumno_card.dart';
import 'package:flutter_matriculasapp/models/alumno_model.dart';

class MatriculaPage extends StatelessWidget{
  Matricula nuevomatricola = Matricula(alumno: Alumno("Jeremy", "jeremy@gmail.com", "45858565"),
  fecha: "26/05/2024",carrera: Carrera(titulo: "Ing. Sistemas",duracion: "5años"));

  List<Alumno> alumnoList = [
    Alumno("Juanito", "juanito@gmail.com", "123456789"),
    Alumno("Carlos", "carlos@gmail.com", "85859858"),
    Alumno("Ana", "ana@gmail.com", "85859595")
  ];

  List<Widget> tilesList = [];
  generateListTile(){
    alumnoList.forEach((element){
      tilesList.add(AlumnoCard(name: element.nombre, institucion: "tecsup"));
    });
  }

  @override
  Widget build(BuildContext context){
    generateListTile();
    return Scaffold(
      appBar: AppBar(title: Text("Matricula"),
      ),
      body: Column(children: [Text("Mis Alumnos"),
      ...tilesList,
      ],
      ),
    );
  }
}