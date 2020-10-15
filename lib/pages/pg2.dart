import 'package:estados/models/usuario.dart';
import 'package:estados/services/SUsuario.dart';
import 'package:flutter/material.dart';

class Pg2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: StreamBuilder(
        stream: svUsu.usuStream,
        builder: (_, AsyncSnapshot<Usuario> dt) {
          return dt.hasData ? Text('Nombre: ${dt.data.nombre}') : Text('Pg2');
        },
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                child: Text('Establecer Usuario'),
                onPressed: () =>
                    svUsu.save(Usuario('Fernando', 21, ['Developer', 'Stack'])),
                color: Colors.blue),
            MaterialButton(
                child: Text('Cambiar Edad'),
                onPressed: () => svUsu.changeEdad(30),
                color: Colors.blue),
            MaterialButton(
                child: Text('Añadir Profesion'),
                onPressed: () {},
                color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
