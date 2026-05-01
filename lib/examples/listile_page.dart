import 'package:flutter/material.dart';

//Listile es un widget que repreenta una fila prediseñada con iconos, imagenes, titulos, subtitulos, interacción etc

class ListilePage extends StatelessWidget {
  const ListilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List tile PAGE")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.cyan,
              child: ListTile(
                leading: Icon(Icons.person), //ICONO DE LA IZQUIERDA
                title: Text("Juan PEREZ"), //título
                subtitle: Text("Disponible"),
                trailing: Icon(Icons.arrow_forward), // Icóno al final
                onTap: () {
                  print("tapeado");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
