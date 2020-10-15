import 'package:estados/models/usuario.dart';
import 'package:estados/services/SUsuario.dart';
import 'package:flutter/material.dart';

class Pg1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pg1')),
      body: StreamBuilder(
        stream: svUsu.usuStream,
        builder: (_, AsyncSnapshot<Usuario> dt) {
          return dt.hasData
              ? InformacionUsuario(dt.data)
              : Center(child: Text('No hay información del Usuario'));
          // return svUsu.existsUsu
          //     ? InformacionUsuario(svUsu.usu)
          //     : Center(child: Text('No hay información del Usuario'));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'pg2'),
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  final Usuario u;

  const InformacionUsuario(this.u);
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
          ListTile(title: Text('Nombre: ${u.nombre}')),
          ListTile(title: Text('Edad: ${u.edad}')),
          Text('Profesiones',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          for (var i = 0; i < u.profesiones.length; i++)
            ListTile(title: Text('Profesion ${i + 1}: ${u.profesiones[i]}')),
          Divider(),
        ],
      ),
    );
  }
}
