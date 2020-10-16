import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:estados/models/usuario.dart';
part 'usuario_state.dart';

part 'usuario_event.dart';

class BUsuario extends Bloc<EUsuario, SUsuario> {
  BUsuario() : super(SUsuario());

  @override
  Stream<SUsuario> mapEventToState(EUsuario event) async* {
    if (event is ActiveUsuario) {
      yield state.copyWith(event.usuario);
    } else if (event is ChangeEdad) {
      yield state.copyWith(state.usuario.copyWith(edad: event.edad));
    } else if (event is AddProfesion) {
      final profesiones = [...state.usuario.profesiones, event.profesion];
      yield state.copyWith(state.usuario.copyWith(profesiones: profesiones));
    } else if (event is DeleteUsuario) {
      yield state.initState();
    }
  }
}
