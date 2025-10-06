import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms/presentacion/cubit/cubithomepage.dart';
import 'package:forms/presentacion/cubit/estadoshomepage.dart';
import 'package:forms/presentacion/widgets/failure.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogicaHomepage()..pedirdatos(),
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0.0,
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("FondoHomepage02redi.jpg"),
                    fit: BoxFit.cover,
                    opacity: 0.8,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20.0,
              bottom: 20.0,
              left: 20.0,
              right: 20.0,
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Color.fromARGB(100, 0, 0, 0),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 40.0),
                    Text(
                      "AGENTE DE CARABINEROS",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 35.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360.0),
                        image: DecorationImage(
                          image: AssetImage("Reservistaredimensionado.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    BlocBuilder<LogicaHomepage, Estadoshomepage>(
                      builder: (context, state) {
                        if (state is LoadingHomepage) {
                          return HomeviewLoading();
                        } else if (state is ExitosoHomepage) {
                          return HomeviewSuccess(grado: state.grado,nombre: state.nombre, placa: state.placa,tiempodeservicio: state.tiempodeServicio,);
                        } else {
                          return (Failure());
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeviewSuccess extends StatelessWidget {
  final String? grado;
  final String? nombre;
  final String? placa;
  final String? tiempodeservicio;
  const HomeviewSuccess({
    super.key,
    this.grado,
    this.nombre,
    this.placa,
    this.tiempodeservicio,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 290.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Color.fromARGB(200, 0, 0, 0),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.0),
          Text("Grado", style: TextStyle(color: Colors.white, fontSize: 25.0)),
          Text(
            grado ?? "No Disponible",
            style: TextStyle(color: Colors.white, fontSize: 13.0),
          ),
          SizedBox(height: 10.0),
          Text("Nombre", style: TextStyle(color: Colors.white, fontSize: 25.0)),
          Text(
            nombre ?? "No Disponible",
            style: TextStyle(color: Colors.white, fontSize: 13.0),
          ),
          SizedBox(height: 10.0),
          Text("Placa", style: TextStyle(color: Colors.white, fontSize: 25.0)),
          Text(
            placa ?? "No disponible",
            style: TextStyle(color: Colors.white, fontSize: 13.0),
          ),
          SizedBox(height: 10.0),
          Text(
            "Tiempo de Servicio",
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
          Text(
            tiempodeservicio ?? "No disponible",
            style: TextStyle(color: Colors.white, fontSize: 13.0),
          ),
        ],
      ),
    );
  }
}

class HomeviewLoading extends StatelessWidget {
  const HomeviewLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 300.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Color.fromARGB(200, 0, 0, 0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Cargando...",
            style: TextStyle(color: Colors.white, fontSize: 30.0),
          ),
          SizedBox(height: 50.0),
          Container(
            height: 80,
            width: 80,
            child: CircularProgressIndicator(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
