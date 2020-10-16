import 'package:estados/models/usuario.dart';
import 'package:get/get.dart';

class CUsuario extends GetxController {
  final user = Usuario().obs;

  @override
  void onInit() {
    user.value = null;
    super.onInit();
  }

  updateUser(Usuario u) => user.value = u;
  deleteUser() => user.value = null;
  updateEdad(int edad) => user.update((v) => v.edad = edad);
  addProfesion() => user.update(
      (v) => v.profesiones = [...v.profesiones, '${v.profesiones.length + 1}']);
}
