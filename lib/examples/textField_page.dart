import 'package:flutter/material.dart';

class TextfieldPage extends StatelessWidget {
  TextEditingController correoController = TextEditingController();
  TextEditingController contrasenaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(correoController);
          print(correoController.text);
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
                //style: le da el estilo al texto que escribe el usuario
                style: TextStyle(color: Colors.red),
                //maxLength: define el tamaño máximo de caracteres permitidos
                maxLength: 20,
                controller: correoController,
                // decoration: personaliza el campo
                decoration: InputDecoration(
                  // counterText : /ocultar el contador de caracteres
                  counterText: "",
                  // labeltext: //texto dentro del campo (pista)
                  labelText: "Correo",
                  //hint: texto de ayuda dentro del field
                  hint: Text("Ingrese el correo "),
                  // prefixIcon: Icono de la izquierda
                  prefixIcon: Icon(Icons.email),
                  // suffix: icono owidget de la derecha
                  suffix: Text(".com.pe"),
                ),
                onChanged: (String value) {
                  //cada caracter que escribe el usuario se imprime
                  // print(value);
                },
              ),
              SizedBox(height: 32),
              TextField(
                controller: contrasenaController,
                obscureText: true, //se oculta el texto
                decoration: InputDecoration(
                  labelText: "Contraseña",
                  hintText: "Ingresa la contraseña",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility),
                  hintStyle: TextStyle(color: Colors.cyan),
                ),
                onChanged: (String value) {},
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  String correo = correoController.text;
                  String contrasena = contrasenaController.text;

                  print(correo);
                  print(contrasena);
                },
                child: Text("Obtener información"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
