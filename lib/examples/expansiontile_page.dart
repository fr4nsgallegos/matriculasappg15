import 'package:flutter/material.dart';

class ExpansiontilePage extends StatelessWidget {
  const ExpansiontilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ExpansionTile")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ExpansionTile(
              title: Text(
                "Título",
              ), //texto o widget principal que se ve siempre
              subtitle: Text("Subtitulo"),
              leading: Icon(Icons.person),
              // trailing: Icon(Icons.abc),
              initiallyExpanded: true, //indicar que inicie expandido
              onExpansionChanged: (bool isOpen) {
                print("¿Esta abierto? : $isOpen");
              },
              collapsedBackgroundColor:
                  Colors.red, //Color de expansión cuando esta cerrado

              backgroundColor: Colors.blueAccent, //Color cuando esta expandido
              iconColor: Colors.yellow,
              textColor: Colors.orange,
              children: [
                ListTile(title: Text("Elemento 1")),
                ListTile(title: Text("Elemento 1")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
