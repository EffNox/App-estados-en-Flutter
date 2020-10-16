part of 'usuario_cubit.dart';

@immutable
abstract class UsuarioState {}

class UsuarioInit extends UsuarioState {
  final existsUsu = false;
}
class UsuarioActive extends UsuarioState {
  final existsUsu = true;
  final Usuario usu;
  UsuarioActive(this.usu);
}
