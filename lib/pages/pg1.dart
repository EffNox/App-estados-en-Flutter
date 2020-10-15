import 'package:estados/services/SUsuario.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pg1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final svUsu = Provider.of<SUsuario>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Pg1'),
        actions: [
          IconButton(icon: Icon(Icons.delete), onPressed: svUsu.removeUsu)
        ],
      ),
      body: svUsu.existsUsu
          ? InformacionUsuario()
          : Center(child: Text('No Data')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'pg2'),
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final u = Provider.of<SUsuario>(context).usu;
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
          ...u.profesiones
              .asMap()
              .map((i, e) =>
                  MapEntry(i, ListTile(title: Text('Profesion $i: $e'))))
              .values
              .toList(),
          // for (var i = 0; i < u.profesiones.length; i++)
          // ListTile(title: Text('Profesion ${i + 1}: ${u.profesiones[i]}')),
          Divider(),
        ],
      ),
    );
  }
}
