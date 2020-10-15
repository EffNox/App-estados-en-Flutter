import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';

class SUsuario with ChangeNotifier {
  Usuario _usu;

  Usuario get usu => _usu;
  bool get existsUsu => _usu != null;

  void changeEdad(int v) {
    _usu.edad = v;
    notifyListeners();
  }

  void removeUsu() {
    _usu = null;
    notifyListeners();
  }

  set usu(Usuario v) {
    _usu = v;
    notifyListeners();
  }

  set addProfesiones(String v) {
    _usu.profesiones.add(v);
    notifyListeners();
  }
}
