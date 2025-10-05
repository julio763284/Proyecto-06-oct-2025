import 'package:bloc/bloc.dart';
import 'package:forms/presentacion/cubit/estadoshomepage.dart';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:forms/presentacion/models/Agente.dart';

class LogicaHomepage extends Cubit<Estadoshomepage> {
  LogicaHomepage() : super(LoadingHomepage());
  void Peticiondatos() async {
    Dio dio02 = Dio();
    await Future.delayed(Duration(seconds: 3));
    try {
      String url =
          'https://gist.githubusercontent.com/julio763284/6ed121035f47c4cef86435635171e811/raw/63fde16cec92adc157856d0420dab31c77b7ee2c/gistfile1.txt';
      Response respuesta = await dio02.get(url);
      print(respuesta.data);
      if (respuesta.statusCode == 200) {
        dynamic datos = jsonDecode(respuesta.data);
        AgenteUser agenteinfo = AgenteUser(datos);
      }
    } catch (e) {}
  }
}
