import 'package:estados/blocs/usuario/usuario_bloc.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pg2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final usuBlock = context.bloc<BUsuario>();
    return Scaffold(
      appBar: AppBar(title: Text('Pg2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                child: Text('Establecer Usuario'),
                onPressed: () {
                  final u = Usuario('Fernando', 21, ['Dev', 'Stack']);
                  // BlocProvider.of<BUsuario>(context).add(ActiveUsuario(u));
                  usuBlock.add(ActiveUsuario(u));
                },
                color: Colors.blue),
            MaterialButton(
                child: Text('Cambiar Edad'),
                onPressed: () => usuBlock.add(ChangeEdad(30)),
                color: Colors.blue),
            MaterialButton(
                child: Text('Añadir Profesion'),
                onPressed: () => usuBlock.add(AddProfesion('Dj xd v:')),
                color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
