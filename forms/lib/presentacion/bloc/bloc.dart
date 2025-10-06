import 'package:bloc/bloc.dart';
import 'package:forms/presentacion/bloc/estados.dart';
import 'package:forms/presentacion/bloc/eventos.dart';
import 'package:dio/dio.dart';

class Logicabloc extends Bloc<Eventos, Estadosbloc> {
  Logicabloc() : super(EstadoInicial()) {
    on<Enviardatos>((event, emit) async {
      emit(EstadoLoading());
      await Future.delayed(Duration(seconds: 3));
      Dio dio01 = Dio();
      String url = "https://datos2-0.free.beeceptor.com/";
      try {
        Response response = await dio01.post(
          url,
          data: {"numerocarnet": event.numerodecarnet, "cedula": event.cedula},
        );
        if (response.statusCode == 201) {
          emit(EstadoExitoso());
        } else {
          emit(EstadoInicial());
        }
      } catch (e) {
        emit(EstadoFallo());
      }
    });
  }
}
