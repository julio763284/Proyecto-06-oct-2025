class Estadoshomepage {}

class LoadingHomepage extends Estadoshomepage {}

class ExitosoHomepage extends Estadoshomepage {
  final String? grado;
  final String? nombre;
  final String? placa;
  final String? tiempodeServicio;
  ExitosoHomepage(
    this.grado,
    this.nombre,
    this.placa,
    this.tiempodeServicio,
  )
}

class Errorhomepage extends Estadoshomepage {}
