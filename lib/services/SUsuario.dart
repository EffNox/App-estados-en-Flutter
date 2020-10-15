import 'dart:async';

import 'package:estados/models/usuario.dart';

class _SUsuario {
  Usuario _usu;

  StreamController<Usuario> _usuStream = StreamController<Usuario>.broadcast();
  Stream<Usuario> get usuStream => _usuStream.stream;

  Usuario get usu => _usu;

  bool get existsUsu => _usu != null;

  void save(Usuario u) {
    _usu = u;
    _usuStream.add(u);
  }

  void changeEdad(int v) {
    _usu.edad = v;
    _usuStream.add(_usu);
  }

  dispose() {
    _usuStream?.close();
  }
}

final svUsu = _SUsuario();
