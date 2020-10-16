part of 'usuario_bloc.dart';

@immutable
abstract class EUsuario {}

class ActiveUsuario extends EUsuario {
  final Usuario usuario;
  ActiveUsuario(this.usuario);
}

class ChangeEdad extends EUsuario {
  final int edad;
  ChangeEdad(this.edad);
}

class AddProfesion extends EUsuario {
  final String profesion;
  AddProfesion(this.profesion);
}

class DeleteUsuario extends EUsuario {}
