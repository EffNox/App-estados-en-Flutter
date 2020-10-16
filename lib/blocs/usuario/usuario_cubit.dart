import 'package:estados/models/usuario.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
part 'usuario_state.dart';

class UsuarioCubit extends Cubit<UsuarioState> {
  UsuarioCubit() : super(UsuarioInit());
  void selectUsu(Usuario u) {
    emit(UsuarioActive(u));
  }

  void changeEdad(int v) {
    final currentSt = state;
    if (currentSt is UsuarioActive) {
      final newU = currentSt.usu.copyUsu(edad: v);
      emit(UsuarioActive(newU));
    }
  }

  void addProfesion() {
    final currentSt = state;
    if (currentSt is UsuarioActive) {
      final profes = [
        ...currentSt.usu.profesiones,
        '${currentSt.usu.profesiones.length + 1}'
      ];
      final newU = currentSt.usu.copyUsu(profesiones: profes);
      emit(UsuarioActive(newU));
    }
  }

  void deleteUsu() {
    emit(UsuarioInit());
  }
}
