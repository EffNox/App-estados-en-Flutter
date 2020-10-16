import 'package:estados/blocs/usuario/usuario_cubit.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pg2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuCubit = context.bloc<UsuarioCubit>();
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
                  // context.bloc<UsuarioCubit>().selectUsu(u);
                  usuCubit.selectUsu(u);
                },
                color: Colors.blue),
            MaterialButton(
                child: Text('Cambiar Edad'),
                onPressed: () => usuCubit.changeEdad(30),
                color: Colors.blue),
            MaterialButton(
                child: Text('Añadir Profesion'),
                onPressed: usuCubit.addProfesion,
                color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
