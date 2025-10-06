class Agente{
  String? grado;
  String? nombre;
  String? placa;
  String? tiempoenservicio;

  Agente(Map json) {
    grado = json['grado'];
    nombre = json['nombre'];
    placa = json['placa'];
    tiempoenservicio = json['añosdeservicio'];
  }
}
