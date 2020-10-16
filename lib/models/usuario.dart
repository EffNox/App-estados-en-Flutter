class Usuario {
  final String nombre;
  final int edad;
  final List<String> profesiones;
  Usuario(this.nombre, this.edad, this.profesiones);
  Usuario copyUsu({String nombre, int edad, List<String> profesiones}) =>
      Usuario(nombre ?? this.nombre, edad ?? this.edad,
          profesiones ?? this.profesiones);
}
