import 'package:estados/controllers/CUsuario.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pg2 extends StatelessWidget {
  // final clUsu = Get.find<CUsuario>();
  final CUsuario clUsu = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pg2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                child: Text('Establecer Usuario'),
                onPressed: () {
                  final u =
                      Usuario(nombre: 'Fernando', edad: 21, profesiones: []);
                  clUsu.updateUser(u);
                },
                color: Colors.blue),
            MaterialButton(
                child: Text('Cambiar Edad'),
                onPressed: () => clUsu.updateEdad(30),
                color: Colors.blue),
            MaterialButton(
                child: Text('Añadir Profesion'),
                onPressed: clUsu.addProfesion,
                color: Colors.blue),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      // child: Icon(Icons.accessibility_new),
      // onPressed: () => Get.offNamed('pg1'),
      // ),
    );
  }
}
