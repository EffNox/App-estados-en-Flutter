part of 'usuario_bloc.dart';

class SUsuario {
  final bool existsUsu;
  final Usuario usuario;

  SUsuario({Usuario user})
      : usuario = user ?? null,
        existsUsu = (user != null);

  SUsuario copyWith(Usuario usuario) => SUsuario(user: usuario ?? this.usuario);

  SUsuario initState() => SUsuario();
}
