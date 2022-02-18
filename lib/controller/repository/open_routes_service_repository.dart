import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:maps_pilote/controller/intefaces/open_routes_service_interface.dart';

Dio _dio = Dio();

class OpenRoutesServiceRepository implements IOpenRoutesService {
  @override
  Future openRoutesServiceDirections(double latOrigin, double lngOrigin,
      double latDestiny, double lngDestiny) async { //, , , 
    //sequencia - longitude - latitude
    String url =
        'https://api.openrouteservice.org/v2/directions/driving-car?api_key=5b3ce3597851110001cf6248e36d09a9ff984da583b56df009b16c5c&start=-40.39415524101291,-20.35093006517498&end=-40.39330107590242,-20.344002999305705';

    try {
      final response = await _dio.get(url);
      final decodeResponse = jsonDecode(response.data);

      final listCoordinates =
          decodeResponse['features'][0]['geometry']['coordinates'];
      final bounds = decodeResponse['features'][0]['bbox'];

      print('object');
      return Future.value({
        "listcoordinates": listCoordinates,
        "bounds": bounds,
      });
    } on DioError catch (e) {
      return Future.error(e);
    }
  }
}
