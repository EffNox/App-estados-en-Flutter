import 'package:estados/blocs/usuario/usuario_bloc.dart';
import 'package:estados/pages/pg1.dart';
import 'package:estados/pages/pg2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider.value(value: BUsuario()),
        BlocProvider(create: (_) => BUsuario()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          initialRoute: 'pg1',
          routes: {'pg1': (_) => Pg1(), 'pg2': (_) => Pg2()}),
    );
  }
}
