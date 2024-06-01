import 'package:flutter/material.dart';
import 'package:flutter_matriculasapp/models/carrera_model.dart';
import 'package:flutter_matriculasapp/models/institucion_model.dart';
import 'package:flutter_matriculasapp/models/matricula_model.dart';
import 'package:flutter_matriculasapp/pages/item_card.dart';
import 'package:flutter_matriculasapp/models/alumno_model.dart';

class MatriculaModelPage extends StatefulWidget{
  @override
  State<MatriculaModelPage> createState() => _MatriculaModelPageState();
}

class _MatriculaModelPageState extends State<MatriculaModelPage> {
  MatriculaModel nuevomatricola = MatriculaModel(alumno: AlumnoModel("Jeremy", "jeremy@gmail.com", "45858565"),
  fecha: "26/05/2024",carrera: CarreraModel(titulo: "Ing. Sistemas",duracion: "5años"));

  List<AlumnoModel> alumnoList = [
    AlumnoModel("Juanito", "juanito@gmail.com", "123456789"),
    AlumnoModel("Carlos", "carlos@gmail.com", "85859858"),
    AlumnoModel("Ana", "ana@gmail.com", "85859595")
  ];
  

  List<InstitucionModel> institucion = [
    InstitucionModel(nombre: "av123", 
    direccion: "ica", ruc: "12345678912", telefono: "2555", matriculas: [])
  ];

  List<Widget> tilesList = [];

  generateListTile(){
    alumnoList.forEach((element){
      tilesList.add(ItemCard(name: element.nombre, institucion: "tecsup",funciondel: (){},funcionedit: (){},));
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
      floatingActionButton: 
        FloatingActionButton(
          onPressed: (){
        AlumnoModel auxAlumnoModel = AlumnoModel("Mario", "mario@gmail.com", "85458565");
        alumnoList.add(auxAlumnoModel);
        //tilesList = [];
       // generateListTile();
        setState(() { });
      },
      child:
      Icon(Icons.add),),
      appBar: AppBar(title: Text("MatriculaModel"),
      ),
      body:
      Column(
        children: [
          
          Text("NOMBRE DE INSTITUCION"),
      //...tilesList,
      ...alumnoList.map((alumnoseleccionadp)=> ItemCard(name: alumnoseleccionadp.nombre, 
      institucion: "PUCP",funciondel: (){
        alumnoList.remove(alumnoseleccionadp);
        print(alumnoseleccionadp.nombre);
        setState(() {
        });
        },funcionedit: (){
        alumnoList[alumnoList.indexOf(alumnoseleccionadp)] = AlumnoModel("Jesus", "calos@gmail,com", "4585222");
          setState(() {
          });
        },)
      ).toList(),
      ],
      ),
    );
  }
}