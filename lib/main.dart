import 'package:estados/pages/pg1.dart';
import 'package:estados/pages/pg2.dart';
import 'package:estados/services/SUsuario.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SUsuario()),
        // ChangeNotifierProvider(create: (_) => SUsuario(), lazy: false),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          initialRoute: 'pg1',
          routes: {'pg1': (_) => Pg1(), 'pg2': (_) => Pg2()}),
    );
  }
}
