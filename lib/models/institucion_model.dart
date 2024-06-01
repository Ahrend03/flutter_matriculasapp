import 'package:flutter_matriculasapp/models/matricula_model.dart';

class InstitucionModel{
  String nombre;
  String direccion;
  String ruc;
  String telefono;
  List<MatriculaModel> matriculas;

  InstitucionModel({
    required this.nombre,
    required this.direccion,
    required this.ruc,
    required this.telefono,
    required this.matriculas
  });
}