import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("FondoHomepage02redi.jpg"), fit: BoxFit.cover, opacity: 0.8)),
            )
            ),
          Positioned(
            top: 20.0,
            bottom: 20.0,
            left: 20.0,
            right: 20.0,
            child: Container(
              height: 100.0,
              width: 100.0,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0), color: Color.fromARGB(100, 0, 0, 0)),
            child: Column(
              children: [
                SizedBox(height: 40.0),
                Text("AGENTE DE CARABINEROS" , style: TextStyle(fontStyle: FontStyle.italic, fontSize: 35.0, color: Colors.white)),
                SizedBox(height: 5.0),
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(360.0), image: DecorationImage(image: AssetImage("Reservistaredimensionado.jpg"), fit: BoxFit.cover)),
                ),
                SizedBox(height: 10.0),
                HomeviewLoading()
                ],
            ),
          )
          )
        ],
      ),
    );
  }
}


class HomeviewSuccess extends StatelessWidget {
  const HomeviewSuccess({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 290.0,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0), color: Color.fromARGB(200, 0, 0, 0)),
      child: Column(
        children: [
          SizedBox(height: 10.0,),
          Text("Grado" , style: TextStyle(color: Colors.white, fontSize: 20.0),),
          Text("---" , style: TextStyle(color: Colors.white, fontSize: 20.0),),
          SizedBox(height: 10.0,),
          Text("Nombre" , style: TextStyle(color: Colors.white, fontSize: 20.0),),
          Text("---" , style: TextStyle(color: Colors.white, fontSize: 20.0),),
          SizedBox(height: 10.0,),
          Text("Placa" , style: TextStyle(color: Colors.white, fontSize: 20.0),),
          Text("---" , style: TextStyle(color: Colors.white, fontSize: 20.0),),
          SizedBox(height: 10.0,),
          Text("Tiempo de Servicio" , style: TextStyle(color: Colors.white, fontSize: 20.0),),
          Text("---" , style: TextStyle(color: Colors.white, fontSize: 20.0),),
        ],
      ),
    );
  }
}

class HomeviewLoading extends StatelessWidget {
  const HomeviewLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 300.0,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0), color: Color.fromARGB(200, 0, 0, 0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Cargando..." , style: TextStyle(color: Colors.white, fontSize: 30.0)),
          SizedBox(height: 50.0,),
          Container(
              height: 80,
              width: 80,
              child: CircularProgressIndicator(color: Colors.white,),
          )
        ],
      ),
    );
  }
}
