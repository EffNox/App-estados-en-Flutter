import 'package:flutter/material.dart';

class Pg2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pg2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                child: Text('Establecer Usuario'),
                onPressed: () {},
                color: Colors.blue),
            MaterialButton(
                child: Text('Cambiar Edad'),
                onPressed: () {},
                color: Colors.blue),
            MaterialButton(
                child: Text('Añadir Profesion'),
                onPressed: () {},
                color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
