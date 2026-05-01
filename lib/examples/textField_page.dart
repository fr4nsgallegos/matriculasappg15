import 'package:flutter/material.dart';

class TextfieldPage extends StatelessWidget {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(textController);
          print(textController.text);
        },
      ),
      appBar: AppBar(title: Text("Textfiled PAGE")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: textController,
                // decoration: personaliza el campo
                decoration: InputDecoration(
                  labelText: "Nombre", //texto dentro del campo (pista)
                ),
                onChanged: (String value) {
                  //cada caracter que escribe el usuario se imprime
                  // print(value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
