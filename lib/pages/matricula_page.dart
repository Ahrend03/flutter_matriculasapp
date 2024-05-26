import 'package:flutter/material.dart';
import 'package:flutter_matriculasapp/models/matricula_model.dart';
import 'package:flutter_matriculasapp/pages/alumno_card.dart';
import 'package:flutter_matriculasapp/models/alumno_model.dart';

class MatriculaPage extends StatelessWidget{
  Matricula nuevomatricola = new Matricula(alumno: Alumno("Jeremy", "jeremy@gmail.com", "45858565"),
  fecha: "26/05/2024");
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Matricula"),
      ),
      body: Column(children: [
        AlumnoCard(name:"Antonio Aguilar", institucion:"Sociedad Agricola Drokasa"),
        AlumnoCard(name: "Sheyla Neyra",institucion: "Cerro Lindo"),
      ],),
    );
  }
}