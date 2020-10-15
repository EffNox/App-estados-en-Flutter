import 'package:estados/models/usuario.dart';
import 'package:estados/services/SUsuario.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pg2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final svUsu = Provider.of<SUsuario>(context);
    return Scaffold(
      appBar: AppBar(title: Text(svUsu.existsUsu ? svUsu.usu.nombre : 'Pg2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                child: Text('Establecer Usuario'),
                onPressed: () =>
                    svUsu.usu = Usuario('Fernando', 21, ['Developer', 'Stack']),
                color: Colors.blue),
            MaterialButton(
                child: Text('Cambiar Edad'),
                onPressed: () => svUsu.changeEdad(30),
                color: Colors.blue),
            MaterialButton(
                child: Text('Añadir Profesion'),
                onPressed: () {
                    svUsu.addProfesiones = 'Developer';
                },
                color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
