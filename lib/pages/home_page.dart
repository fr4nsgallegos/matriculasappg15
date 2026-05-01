import 'package:flutter/material.dart';
import 'package:matriculasappg15/models/carrera_model.dart';
import 'package:matriculasappg15/models/matricula_model.dart';
import 'package:matriculasappg15/models/persona_model.dart';
import 'package:matriculasappg15/models/universidad_model.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PersonaModel> personas = [];

  List<Widget> listarElementos(List<MatriculaModel> matriculas) {
    return matriculas.map((matricula) {
      return ListTile(
        title: Text(matricula.estudiante.nombre),
        subtitle: Text(matricula.estudiante.apellido),
      );
    }).toList();
  }

  UniversidadModel tecsup = UniversidadModel(
    nombre: "TECSUP",
    ruc: "20131313131313",
    direccion: "aV LIMAM123",
    telefono: "987654321",
    matriculas: [],
  );

  CarreraModel desarrollador = CarreraModel("Developer", "3 años");

  PersonaModel estudiante1 = PersonaModel(
    nombre: "Felipe",
    apellido: "Banderas",
    direccion: "av 123",
    dni: "321654987",
    nacionalidad: "peruano",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                tecsup.matriculas.add(
                  MatriculaModel(
                    fecha: "30/04/26",
                    hora: "20:15",
                    carrera: desarrollador,
                    estudiante: estudiante1,
                  ),
                );
                setState(() {});
              },
              child: Text("Agregar persona"),
            ),
            Text(tecsup.nombre),
            ...listarElementos(tecsup.matriculas),
          ],
        ),
      ),
    );
  }
}
