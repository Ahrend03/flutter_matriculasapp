import 'package:flutter/material.dart';
import 'package:flutter_matriculasapp/models/carrera_model.dart';
import 'package:flutter_matriculasapp/models/matricula_model.dart';
import 'package:flutter_matriculasapp/pages/alumno_card.dart';
import 'package:flutter_matriculasapp/models/alumno_model.dart';

class MatriculaPage extends StatefulWidget{
  @override
  State<MatriculaPage> createState() => _MatriculaPageState();
}

class _MatriculaPageState extends State<MatriculaPage> {
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
  void initState() {
    generateListTile();
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton
      (onPressed: (){
        Alumno auxAlumno = Alumno("Mario", "mario@gmail.com", "85458565");
        alumnoList.add(auxAlumno);
        generateListTile();
        setState(() { });
      },
      child: Icon(Icons.add),),
      appBar: AppBar(title: Text("Matricula"),
      ),
      body: Column(children: [Text("Mis Alumnos"),
      ...tilesList,
      ...alumnoList.map((mandarina)=> AlumnoCard(name: mandarina.nombre, institucion: "PUCP")
      ).toList(),
      ],
      ),
    );
  }
}