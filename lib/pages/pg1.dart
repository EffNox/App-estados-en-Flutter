import 'package:estados/blocs/usuario/usuario_bloc.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pg1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pg1'),actions: [
        IconButton(icon: Icon(Icons.delete), onPressed: (){
          context.bloc<BUsuario>().add(DeleteUsuario());
        })
      ],),
      body: BlocBuilder<BUsuario, SUsuario>(
          builder: (_, st) => (st.existsUsu)
              ? InformacionUsuario(st.usuario)
              : Center(child: Text('No data'))),
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
          ...u.profesiones.map((e) => ListTile(title: Text('Profesion $e '))),
          Divider(),
        ],
      ),
    );
  }
}
