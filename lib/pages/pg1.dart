import 'package:estados/controllers/CUsuario.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pg1 extends StatelessWidget {
  final clUsu = Get.put(CUsuario());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pg1'), actions: [
        IconButton(icon: Icon(Icons.delete), onPressed: clUsu.deleteUser)
      ]),
      body: Obx(() => clUsu.user.value != null
          ? InformacionUsuario()
          : Center(child: Text('No data'))),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () => Get.toNamed('pg2'),
      ),
    );
  }
}

class InformacionUsuario extends GetWidget<CUsuario> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('General',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),
          // GetX<CUsuario>(
          //     // init: CUsuario(),
          //     builder: (_) =>
          //         ListTile(title: Text('Nombre: ${_.user.value.nombre}'))),
          Obx(() =>
              ListTile(title: Text('Nombre: ${controller.user.value.nombre}'))),
          Obx(() =>
              ListTile(title: Text('Edad: ${controller.user.value.edad}'))),

          Text('Profesiones',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ...controller.user.value.profesiones
              .map((e) => ListTile(title: Text('Profesion: $e'))),
          Divider(),
        ],
      ),
    );
  }
}
